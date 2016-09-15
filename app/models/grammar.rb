class Grammar < ApplicationRecord

    default_scope { order('created_at').order('lesson_id')}

    belongs_to :lesson
    has_many :examples, as: :examplable

    accepts_nested_attributes_for :examples, allow_destroy: true

    validates :title, :explanation, presence: true

end
