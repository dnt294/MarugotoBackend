class Kanji < ApplicationRecord

    has_many :example, as: :examplable

    def find_by_lesson
        Kanji.where("lesson = ?", lesson)
    end

end
