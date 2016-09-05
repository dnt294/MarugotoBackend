class CreateNewWords < ActiveRecord::Migration[5.0]
    def change
        create_table :new_words do |t|
            t.string :word, null: false
            t.string :kanji_version
            t.string :meaning, null: false
            t.text :note
            t.string :word_type, null: false, default: 'GenericWord'

            t.references :lesson, index: true

            t.timestamps
        end
    end
end
