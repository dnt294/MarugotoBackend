FactoryGirl.define do
    factory :example do
        factory :valid_example do
            factory :kanji_example do
                sentences       'いちじ'
                kanji_version   '一時'
                meaning         'Một giờ'
                note            Faker::Lorem.sentences
                kanji
            end
            factory :new_word_example do
                sentences       'りんごをたべます'
                kanji_version   'りんごを食べます'
                meaning         'ăn táo'
                note            Faker::Lorem.sentences
                new_word
            end
        end
        factory :invalid_example do
            factory :example_without_kanji do
                examplable nil
                examplable_type 'kanji'
            end
            factory :example_without_new_word do
                examplable nil
                examplable_type 'new_word'
            end

        end
    end
end
