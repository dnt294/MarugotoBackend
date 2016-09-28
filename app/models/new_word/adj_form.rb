class NewWord::AdjForm < ApplicationRecord

    self.table_name = 'adj_forms'

    belongs_to :new_word

    validates :adj_type, presence: true

    def self.adj_types
        %w(I-adj Na-adj)
    end
end
