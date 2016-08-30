require 'rails_helper'

RSpec.describe "verb_forms/new", type: :view do
  before(:each) do
    assign(:verb_form, VerbForm.new())
  end

  it "renders new verb_form form" do
    render

    assert_select "form[action=?][method=?]", verb_forms_path, "post" do
    end
  end
end
