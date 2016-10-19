class Grammar < ApplicationRecord

    belongs_to :lesson
    counter_culture :lesson
    has_many :examples, as: :examplable

    accepts_nested_attributes_for :examples, allow_destroy: true

    validates :title, :explanation, presence: true

end
