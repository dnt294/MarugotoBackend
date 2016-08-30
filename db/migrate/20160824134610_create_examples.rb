class CreateExamples < ActiveRecord::Migration[5.0]
    def change
        create_table :examples do |t|
            t.string :sentences
            t.string :kanji_version
            t.string :meaning
            t.text :note

            t.references :examplable, polymorphic: true

            t.timestamps
        end
    end
end
