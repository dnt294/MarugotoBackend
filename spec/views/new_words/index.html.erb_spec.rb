require 'rails_helper'

RSpec.describe "new_words/index", type: :view do
  before(:each) do
    assign(:new_words, [
      NewWord.create!(),
      NewWord.create!()
    ])
  end

  it "renders a list of new_words" do
    render
  end
end
