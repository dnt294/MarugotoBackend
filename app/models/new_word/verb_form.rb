class NewWord::VerbForm < ApplicationRecord

    self.table_name = 'verb_forms'

    belongs_to :new_word

    validates :verb_type, presence: true
    validates :verb_type, numericality: { only_integer: true }
end
