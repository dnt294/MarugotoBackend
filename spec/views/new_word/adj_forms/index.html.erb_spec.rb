require 'rails_helper'

RSpec.describe "new_word/adj_forms/index", type: :view do
  before(:each) do
    assign(:new_word_adj_forms, [
      NewWord::AdjForm.create!(
        :adj_type => 2
      ),
      NewWord::AdjForm.create!(
        :adj_type => 2
      )
    ])
  end

  it "renders a list of new_word/adj_forms" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
