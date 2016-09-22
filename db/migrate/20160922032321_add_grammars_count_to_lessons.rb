class AddGrammarsCountToLessons < ActiveRecord::Migration

  def self.up

    add_column :lessons, :grammars_count, :integer, :null => false, :default => 0

  end

  def self.down

    remove_column :lessons, :grammars_count

  end

end
