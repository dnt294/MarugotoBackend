class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.string :book
      t.string :lesson

      t.timestamps
    end
  end
end
