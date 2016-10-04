module NewWordsHelper
    def init_forms(word)
        if !word.adj_form.present?
            word.build_adj_form
        end
        if !word.verb_form.present?
            word.build_verb_form
        end

        #Can't use:
        #word.verb_form ||= NewWord::VerbForm.new
        #Because it will immediately commit to database.

        word
    end

    def word_type_colour(word)
        case word.word_type
        when 'Adj'
            'pink'
        when 'Noun'
            'blue'
        when 'Verb'
            'orange'
        when 'Phrase'
            'brown'
        when 'GenericWord'
            'gray'
        end
    end
end
