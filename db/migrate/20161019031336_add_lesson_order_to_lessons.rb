class AddLessonOrderToLessons < ActiveRecord::Migration[5.0]
    def change
        add_column :lessons, :lesson_order, :integer

        add_index :lessons, :lesson_order
    end
end
