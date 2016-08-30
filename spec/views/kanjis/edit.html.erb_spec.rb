require 'rails_helper'

RSpec.describe "kanjis/edit", type: :view do
  before(:each) do
    @kanji = assign(:kanji, Kanji.create!())
  end

  it "renders the edit kanji form" do
    render

    assert_select "form[action=?][method=?]", kanji_path(@kanji), "post" do
    end
  end
end
