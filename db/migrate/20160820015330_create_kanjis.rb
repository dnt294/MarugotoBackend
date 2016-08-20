class CreateKanjis < ActiveRecord::Migration[5.0]
    def change
        create_table :kanjis do |t|
            t.string :kanji
            t.string :meaning
            t.string :onyomi
            t.string :kunyomi
            t.string :hint
            t.string :image
            t.boolean :kanji_part
            t.decimal :lesson

            t.timestamps
        end
    end
end
