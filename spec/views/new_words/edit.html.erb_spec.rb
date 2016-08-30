require 'rails_helper'

RSpec.describe "new_words/edit", type: :view do
  before(:each) do
    @new_word = assign(:new_word, NewWord.create!())
  end

  it "renders the edit new_word form" do
    render

    assert_select "form[action=?][method=?]", new_word_path(@new_word), "post" do
    end
  end
end
