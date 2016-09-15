class Example < ApplicationRecord

    belongs_to :examplable, polymorphic: true, optional: true

    validates_presence_of :sentences, :meaning

end
