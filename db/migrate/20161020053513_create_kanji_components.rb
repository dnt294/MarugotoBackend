class CreateKanjiComponents < ActiveRecord::Migration[5.0]
    def change
        create_table :kanji_components do |t|
            t.integer :component_id
            t.integer :reference_id

            t.timestamps
        end

        add_index :kanji_components, :component_id
        add_index :kanji_components, :reference_id
        add_index :kanji_components, [:component_id, :reference_id], unique: true
    end
end
