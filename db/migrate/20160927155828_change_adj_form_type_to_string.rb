class ChangeAdjFormTypeToString < ActiveRecord::Migration[5.0]
    def change
        change_column :adj_forms, :adj_type, :string, null: false
    end
end
