class Kanji < ApplicationRecord

    mount_uploader :image, KanjiImageUploader

    default_scope { order('created_at').order('lesson_id')}
    scope :of_book, ->(lesson_id) { where("lesson_id = ?", lesson_id) if lesson_id.present? }


    belongs_to :lesson
    counter_culture :lesson

    has_many :examples, as: :examplable

    accepts_nested_attributes_for :examples, allow_destroy: true

    #####     Define component-refenrence relationship ######

    has_many :component_relationships, foreign_key: :reference_id, class_name: 'KanjiComponent', dependent: :destroy
    has_many :reference_relationships, foreign_key: :component_id, class_name: 'KanjiComponent', dependent: :destroy

    has_many :components, through: :component_relationships, source: :component
    has_many :references, through: :reference_relationships, source: :reference

    accepts_nested_attributes_for :component_relationships, allow_destroy: true
    accepts_nested_attributes_for :reference_relationships, allow_destroy: true
    ############################################

    validates :kanji, :meaning, :entry_number, presence: true

    validates :radical, inclusion: { in: [true, false] }
end
