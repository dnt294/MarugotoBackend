class AddEntryNumbertoKanjis < ActiveRecord::Migration[5.0]
    def change
        add_column :kanjis, :entry_number, :integer, null: :false, unique: true
    end
end
