class Lesson < ApplicationRecord

    has_many :kanjis
    has_many :new_words

    validates_presence_of :book
    validates_presence_of :lesson

    def select_label
        "#{book} - Lesson #{lesson}"
    end
end
