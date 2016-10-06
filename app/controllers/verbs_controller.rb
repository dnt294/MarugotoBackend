class VerbsController < ApplicationController
    def index
        @first_type_verbs = NewWord.verbs.includes(:verb_form).where(verb_forms: {verb_type: 1})
        @second_type_verbs = NewWord.verbs.includes(:verb_form).where(verb_forms: {verb_type: 2})
        @ftv_count = @first_type_verbs.length
        @stv_count = @second_type_verbs.length
        @verbs_count = @ftv_count + @stv_count
    end
end
