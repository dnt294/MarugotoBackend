require 'rails_helper'

RSpec.describe Example, type: :model do


    context 'model validations' do

    end

    context 'model associations' do
        it { should belong_to :examplable }
    end
end
