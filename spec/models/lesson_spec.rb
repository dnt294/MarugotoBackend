require 'rails_helper'

RSpec.describe Lesson, type: :model do

    context 'model validations' do
        it { should validate_presence_of :book }
        it { should validate_presence_of :lesson }
    end

    context 'model associations' do
        it { should have_many :kanjis }
        it { should have_many :new_words }
    end

    context 'valid Lesson' do
        it 'is valid with a right attributes' do
            lesson = build(:valid_lesson)
            expect(lesson).to be_valid
        end
    end

    context 'invalid Lesson' do
        it 'is invalid without a book name' do
            lesson_without_book = build(:empty_book_lesson)
            expect(lesson_without_book).to be_invalid
        end

        it 'is invalid without a lesson number' do
            lesson_without_lesson_number = build(:empty_lesson_lesson)
            expect(lesson_without_lesson_number).to be_invalid
        end
    end

end
