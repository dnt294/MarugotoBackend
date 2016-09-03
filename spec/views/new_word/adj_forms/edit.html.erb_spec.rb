require 'rails_helper'

RSpec.describe "new_word/adj_forms/edit", type: :view do
  before(:each) do
    @new_word_adj_form = assign(:new_word_adj_form, NewWord::AdjForm.create!(
      :adj_type => 1
    ))
  end

  it "renders the edit new_word_adj_form form" do
    render

    assert_select "form[action=?][method=?]", new_word_adj_form_path(@new_word_adj_form), "post" do

      assert_select "input#new_word_adj_form_adj_type[name=?]", "new_word_adj_form[adj_type]"
    end
  end
end
