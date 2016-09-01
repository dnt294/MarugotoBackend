class Kanji < ApplicationRecord

    scope :of_book, ->(lesson_id) { where("lesson_id = ?", lesson_id) if lesson_id.present? }

    belongs_to :lesson
    has_many :examples, as: :examplable

    #####     Define radical relationship ######

    has_many :radical_relationship, foreign_key: :surbodinate_id, class_name: 'KanjiRadical'
    has_many :surbodinate_relationship, foreign_key: :radical_id, class_name: 'KanjiRadical'

    has_many :radicals, through: :radical_relationship, source: :radical
    has_many :surbodinates, through: :surbodinate_relationship, source: :surbodinate

    ############################################

    validates :kanji, :meaning, presence: true
    validates :radical, inclusion: { in: [true, false] }
end
