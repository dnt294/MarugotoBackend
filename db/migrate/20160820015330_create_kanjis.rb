class CreateKanjis < ActiveRecord::Migration[5.0]
    def change
        create_table :kanjis do |t|
            t.string :kanji
            t.string :meaning
            t.string :onyomi
            t.string :kunyomi
            t.integer :stroke_count
            t.string :hint
            t.string :image
            t.boolean :radical, default: false
            t.text :note

            t.references :lesson, index: true

            t.timestamps
        end
    end
end
