require 'rails_helper'

RSpec.describe "new_word/verb_forms/index", type: :view do
  before(:each) do
    assign(:new_word_verb_forms, [
      NewWord::VerbForm.create!(
        :verb_type => 2,
        :dictionary_form => "Dictionary Form",
        :nai_form => "Nai Form",
        :te_form => "Te Form"
      ),
      NewWord::VerbForm.create!(
        :verb_type => 2,
        :dictionary_form => "Dictionary Form",
        :nai_form => "Nai Form",
        :te_form => "Te Form"
      )
    ])
  end

  it "renders a list of new_word/verb_forms" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Dictionary Form".to_s, :count => 2
    assert_select "tr>td", :text => "Nai Form".to_s, :count => 2
    assert_select "tr>td", :text => "Te Form".to_s, :count => 2
  end
end
