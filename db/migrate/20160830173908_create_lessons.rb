class CreateLessons < ActiveRecord::Migration[5.0]
    def change
        create_table :lessons do |t|
            t.string :book
            t.integer :lesson

            t.timestamps
        end
    end
end
