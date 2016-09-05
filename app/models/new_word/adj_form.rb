class NewWord::AdjForm < ApplicationRecord

    self.table_name = 'adj_forms'

    belongs_to :new_word

    validates :adj_type, presence: true
    validates :adj_type, numericality: { only_integer: true }
end
