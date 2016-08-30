class NewWord < ApplicationRecord

    scope :adjs, -> { where(type: 'Adj') }
    scope :generic_words, -> {where( type: 'GenericWord') }
    scope :nouns, -> { where(type: 'Noun') }
    scope :phrases, -> { where(type: 'Phrase') }
    scope :verbs, -> { where(type: 'Verbs') }

    self.inheritance_column = :type

    def self.types
        %w(Adj Noun Verb Phrase GenericWord)
    end
end
