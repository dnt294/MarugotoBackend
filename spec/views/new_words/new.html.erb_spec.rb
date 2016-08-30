require 'rails_helper'

RSpec.describe "new_words/new", type: :view do
  before(:each) do
    assign(:new_word, NewWord.new())
  end

  it "renders new new_word form" do
    render

    assert_select "form[action=?][method=?]", new_words_path, "post" do
    end
  end
end
