class AddKanjisCountToLessons < ActiveRecord::Migration

  def self.up

    add_column :lessons, :kanjis_count, :integer, :null => false, :default => 0

  end

  def self.down

    remove_column :lessons, :kanjis_count

  end

end
