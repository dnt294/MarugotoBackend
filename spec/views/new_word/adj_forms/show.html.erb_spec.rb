require 'rails_helper'

RSpec.describe "new_word/adj_forms/show", type: :view do
  before(:each) do
    @new_word_adj_form = assign(:new_word_adj_form, NewWord::AdjForm.create!(
      :adj_type => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
