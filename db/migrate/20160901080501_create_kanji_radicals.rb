class CreateKanjiRadicals < ActiveRecord::Migration[5.0]
    def change
        create_table :kanji_radicals do |t|
            t.integer :radical_id
            t.integer :surbodinate_id

            t.timestamps
        end
    end
end
