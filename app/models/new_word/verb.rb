class Verb < NewWord

    belongs_to :multiformable, polymorphic: true

end
