require 'rails_helper'

RSpec.describe "grammars/new", type: :view do
  before(:each) do
    assign(:grammar, Grammar.new(
      :title => "MyString",
      :explanation => "MyString",
      :note => "MyText",
      :lesson => nil
    ))
  end

  it "renders new grammar form" do
    render

    assert_select "form[action=?][method=?]", grammars_path, "post" do

      assert_select "input#grammar_title[name=?]", "grammar[title]"

      assert_select "input#grammar_explanation[name=?]", "grammar[explanation]"

      assert_select "textarea#grammar_note[name=?]", "grammar[note]"

      assert_select "input#grammar_lesson_id[name=?]", "grammar[lesson_id]"
    end
  end
end
