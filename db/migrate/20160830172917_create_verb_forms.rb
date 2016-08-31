class CreateVerbForms < ActiveRecord::Migration[5.0]
    def change
        create_table :verb_forms do |t|
            t.string :dictionary_form
            t.string :nai_form
            t.string :te_form

            t.belongs_to :new_word, index: true

            t.timestamps
        end
    end
end
