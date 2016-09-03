class Lesson < ApplicationRecord

    has_many :kanjis
    has_many :new_words

    validates_presence_of :book
    validates_presence_of :lesson

    scope :kanji_books, -> { where(book: 'Kanji') }
    scope :marugoto_books, -> {where.not(book: 'Kanji').order('book').order('lesson') }

    def select_label
        "#{book} - Lesson #{lesson}"
    end


end
