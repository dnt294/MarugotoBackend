class Example < ApplicationRecord

    belongs_to :examplable, polymorphic: true

end
