module CacheHelper
    def marugoto_books
        @marugoto_books ||= Lesson.marugoto_books
    end

    def kanji_books
        @kanji_books ||= Lesson.kanji_books
        #byebug
        #@kanji_books ||= Lesson.where(book: 'Kanji')
    end
end
