class Lesson < ApplicationRecord

    has_many :kanjis
    has_many :new_words
    has_many :grammars

    validates_presence_of :book
    validates_presence_of :lesson

    scope :kanji_books, -> { where(book: 'Kanji').order('book').order('lesson') }
    scope :marugoto_books, -> {where.not(book: 'Kanji').order('book').order('lesson') }

    scope :with_grammars, -> {joins(:grammars)}
    scope :with_kanjis, -> {joins(:kanjis)}

    def select_label
        "#{book} - Lesson #{lesson}"
    end

    def select_short_label
        "#{book} - #{lesson}"
    end
end
