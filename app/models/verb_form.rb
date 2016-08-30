class VerbForm < ApplicationRecord
    has_one :verb, as: :multiformable
end
