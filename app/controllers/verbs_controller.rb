class VerbsController < ApplicationController

    def index
        @verbs = NewWord.verbs.includes(:verb_form).as_json(include: :verb_form)
    end

end
