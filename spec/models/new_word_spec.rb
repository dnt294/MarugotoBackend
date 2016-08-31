require 'rails_helper'

RSpec.describe NewWord, type: :model do

    context 'model validations' do

    end

    context 'model associations' do
        it { should belong_to :lesson }
        it { should have_many :examples }
    end
end
