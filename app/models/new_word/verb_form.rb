class NewWord::VerbForm < ApplicationRecord

    self.table_name = 'verb_forms'

    belongs_to :new_word

    scope :first_type, -> { where(verb_type: 1) }
    scope :second_type, -> { where(verb_type: 2) }

    validates :verb_type, presence: true
    validates :verb_type, numericality: { only_integer: true }
end
