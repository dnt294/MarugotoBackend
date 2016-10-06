class NewWord < ApplicationRecord
    include PgSearch

    ##### ------------------ SCOPE ----------------------------------------####
    default_scope { order('new_words.created_at').order('lesson_id')}
    scope :of_book, ->(lesson_id) { where("lesson_id = ?", lesson_id) if lesson_id.present? }

    pg_search_scope :search_for, against: %i(word kanji_version), using: [:tsearch]
    #### -------------------- SCOPE - WORD TYPES ---------------------------####
    scope :adjs, -> { where(word_type: 'Adj') }
    scope :generic_words, -> {where( word_type: 'GenericWord') }
    scope :nouns, -> { where(word_type: 'Noun') }
    scope :phrases, -> { where(word_type: 'Phrase') }
    scope :verbs, -> { where(word_type: 'Verb') }

    ##### ------------------- RELATIONSHIP --------------------------------####
    belongs_to :lesson
    counter_culture :lesson
    has_many :examples, as: :examplable

    has_one :adj_form, dependent: :destroy, inverse_of: :new_word
    has_one :verb_form, dependent: :destroy, inverse_of: :new_word

    #### ------------------------ RELATIONSHIP - FORM ----------------------####
    accepts_nested_attributes_for :adj_form, allow_destroy: true
    accepts_nested_attributes_for :verb_form, allow_destroy: true
    accepts_nested_attributes_for :examples, allow_destroy: true

    #### ------------------------- VALIDATION -----------------------------####

    validates :word, :meaning, :word_type, presence: true


    #### ------------------------ CALLBACK ----------------------------------####
    after_save :check_valid_forms

    #### ------------------------ CONSTAIN -----------------------------------####

    def self.types
        %w(Adj Noun Verb Phrase GenericWord)
    end

    #### ------------------------- METHOD -----------------------------------####

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
