class CreateVerbForms < ActiveRecord::Migration[5.0]
  def change
    create_table :verb_forms do |t|
      t.string :dictionary_form
      t.string :nai_form
      t.string :te_form

      t.timestamps
    end
  end
end
