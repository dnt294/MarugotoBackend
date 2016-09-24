class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable, authentication_keys: [:username]

    def self.find_for_database_authentication(warden_conditions)
        conditions = warden_conditions.dup
        if username = conditions.delete(:username)
            where(conditions.to_h).where(["lower(username) = :value", { :value => username.downcase }]).first
        elsif conditions.has_key?(:username)
            where(conditions.to_h).first
        end
    end

end
