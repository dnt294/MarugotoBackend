require 'rails_helper'

RSpec.describe "new_words/show", type: :view do
  before(:each) do
    @new_word = assign(:new_word, NewWord.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
