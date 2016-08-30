require 'rails_helper'

RSpec.describe "kanjis/new", type: :view do
  before(:each) do
    assign(:kanji, Kanji.new())
  end

  it "renders new kanji form" do
    render

    assert_select "form[action=?][method=?]", kanjis_path, "post" do
    end
  end
end
