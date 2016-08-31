FactoryGirl.define do
    factory :lesson do
        factory :valid_lesson do
            book 'Kanji'
            lesson 1
        end
        factory :invalid_lesson do
            factory :empty_book_lesson do
                book nil
            end
            factory :empty_lesson_lesson do
                lesson nil
            end
        end
    end
end
