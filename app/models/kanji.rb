class Kanji < ApplicationRecord

    belongs_to :lesson
    has_many :examples, as: :examplable

    validates :kanji, :meaning, presence: true
    validates :kanji_part, inclusion: { in: [true, false] }

    def find_by_lesson
        Kanji.where("lesson = ?", lesson)
    end

end
