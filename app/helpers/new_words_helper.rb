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
end
