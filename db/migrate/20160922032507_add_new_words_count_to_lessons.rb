class AddNewWordsCountToLessons < ActiveRecord::Migration

  def self.up

    add_column :lessons, :new_words_count, :integer, :null => false, :default => 0

  end

  def self.down

    remove_column :lessons, :new_words_count

  end

end
