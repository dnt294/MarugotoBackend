require 'rails_helper'

RSpec.describe "new_word/adj_forms/new", type: :view do
  before(:each) do
    assign(:new_word_adj_form, NewWord::AdjForm.new(
      :adj_type => 1
    ))
  end

  it "renders new new_word_adj_form form" do
    render

    assert_select "form[action=?][method=?]", new_word_adj_forms_path, "post" do

      assert_select "input#new_word_adj_form_adj_type[name=?]", "new_word_adj_form[adj_type]"
    end
  end
end
