require 'rails_helper'

RSpec.describe "grammars/edit", type: :view do
  before(:each) do
    @grammar = assign(:grammar, Grammar.create!(
      :title => "MyString",
      :explanation => "MyString",
      :note => "MyText",
      :lesson => nil
    ))
  end

  it "renders the edit grammar form" do
    render

    assert_select "form[action=?][method=?]", grammar_path(@grammar), "post" do

      assert_select "input#grammar_title[name=?]", "grammar[title]"

      assert_select "input#grammar_explanation[name=?]", "grammar[explanation]"

      assert_select "textarea#grammar_note[name=?]", "grammar[note]"

      assert_select "input#grammar_lesson_id[name=?]", "grammar[lesson_id]"
    end
  end
end
