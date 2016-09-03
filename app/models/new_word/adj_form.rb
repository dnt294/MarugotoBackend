class NewWord::AdjForm < ApplicationRecord

    self.table_name = 'adj_forms'

    belongs_to :new_word

end
