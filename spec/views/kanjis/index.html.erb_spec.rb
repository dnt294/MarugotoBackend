require 'rails_helper'

RSpec.describe "kanjis/index", type: :view do
  before(:each) do
    assign(:kanjis, [
      Kanji.create!(),
      Kanji.create!()
    ])
  end

  it "renders a list of kanjis" do
    render
  end
end
