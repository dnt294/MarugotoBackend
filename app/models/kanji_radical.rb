class KanjiRadical < ApplicationRecord

    belongs_to :radical, foreign_key: 'radical_id', class_name: 'Kanji'
    belongs_to :surbodinate, foreign_key: 'surbodinate_id', class_name: 'Kanji'

end
