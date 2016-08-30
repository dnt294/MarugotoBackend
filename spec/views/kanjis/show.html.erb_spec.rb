require 'rails_helper'

RSpec.describe "kanjis/show", type: :view do
  before(:each) do
    @kanji = assign(:kanji, Kanji.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
