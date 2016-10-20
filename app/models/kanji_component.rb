class KanjiComponent < ApplicationRecord
    belongs_to :component, class_name: 'Kanji'
    belongs_to :reference, class_name: 'Kanji'

    validates :component_id, presence: true
    validates :reference_id, presence: true
end
