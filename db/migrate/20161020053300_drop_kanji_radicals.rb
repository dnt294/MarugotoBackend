class DropKanjiRadicals < ActiveRecord::Migration[5.0]
    def change
        drop_table :kanji_radicals
    end
end
