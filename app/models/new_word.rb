class NewWord < ApplicationRecord

    default_scope { order('created_at').order('lesson_id')}
    scope :of_book, ->(lesson_id) { where("lesson_id = ?", lesson_id) if lesson_id.present? }

    belongs_to :lesson
    has_many :examples, as: :examplable

    has_one :adj_form, dependent: :destroy, inverse_of: :new_word
    has_one :verb_form, dependent: :destroy, inverse_of: :new_word

    scope :adjs, -> { where(word_type: 'Adj') }
    scope :generic_words, -> {where( word_type: 'GenericWord') }
    scope :nouns, -> { where(word_type: 'Noun') }
    scope :phrases, -> { where(word_type: 'Phrase') }
    scope :verbs, -> { where(word_type: 'Verbs') }

    accepts_nested_attributes_for :adj_form, allow_destroy: true
    accepts_nested_attributes_for :verb_form, allow_destroy: true

    after_save :check_valid_forms

    def self.types
        %w(Adj Noun Verb Phrase GenericWord)
    end

    private

    def check_valid_forms
        if word_type != 'Adj'
            adj_form.destroy if adj_form.present?
        end
        if word_type != 'Verb'
            verb_form.destroy if verb_form.present?
        end
    end

end
