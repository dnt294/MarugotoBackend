require 'rails_helper'

RSpec.describe "grammars/index", type: :view do
  before(:each) do
    assign(:grammars, [
      Grammar.create!(
        :title => "Title",
        :explanation => "Explanation",
        :note => "MyText",
        :lesson => nil
      ),
      Grammar.create!(
        :title => "Title",
        :explanation => "Explanation",
        :note => "MyText",
        :lesson => nil
      )
    ])
  end

  it "renders a list of grammars" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Explanation".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
