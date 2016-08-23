class Kanji < ApplicationRecord

    def find_by_lesson
        Kanji.where("lesson = ?", lesson)
    end

end
