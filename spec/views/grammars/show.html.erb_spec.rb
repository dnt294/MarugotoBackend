require 'rails_helper'

RSpec.describe "grammars/show", type: :view do
  before(:each) do
    @grammar = assign(:grammar, Grammar.create!(
      :title => "Title",
      :explanation => "Explanation",
      :note => "MyText",
      :lesson => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Explanation/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
