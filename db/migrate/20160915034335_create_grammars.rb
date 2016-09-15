class CreateGrammars < ActiveRecord::Migration[5.0]
    def change
        create_table :grammars do |t|
            t.string :title, null: false
            t.string :explanation, null: false
            t.text :note
            t.references :lesson, foreign_key: true, index: true

            t.timestamps
        end
    end
end
