require 'rails_helper'

RSpec.describe "new_word/verb_forms/show", type: :view do
  before(:each) do
    @new_word_verb_form = assign(:new_word_verb_form, NewWord::VerbForm.create!(
      :verb_type => 2,
      :dictionary_form => "Dictionary Form",
      :nai_form => "Nai Form",
      :te_form => "Te Form"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Dictionary Form/)
    expect(rendered).to match(/Nai Form/)
    expect(rendered).to match(/Te Form/)
  end
end
