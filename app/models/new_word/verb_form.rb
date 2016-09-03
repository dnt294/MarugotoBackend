class NewWord::VerbForm < ApplicationRecord

    self.table_name = 'verb_forms'

    belongs_to :new_word

end
