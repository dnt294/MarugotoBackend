class CreateVerbForms < ActiveRecord::Migration[5.0]
    def change
        create_table :verb_forms do |t|
            t.integer :verb_type, null: false
            t.string :dictionary_form
            t.string :te_form
            t.string :ta_form
            t.string :nai_form

            t.references :new_word

            t.timestamps
        end
    end
end
