class Example < ApplicationRecord

    belongs_to :examplable, polymorphic: true, optional: true

end
