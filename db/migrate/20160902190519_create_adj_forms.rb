class CreateAdjForms < ActiveRecord::Migration[5.0]
    def change
        create_table :adj_forms do |t|
            t.integer :adj_type, null: false

            t.references :new_word

            t.timestamps
        end
    end
end
