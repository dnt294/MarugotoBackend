require 'rails_helper'

RSpec.describe "verb_forms/edit", type: :view do
  before(:each) do
    @verb_form = assign(:verb_form, VerbForm.create!())
  end

  it "renders the edit verb_form form" do
    render

    assert_select "form[action=?][method=?]", verb_form_path(@verb_form), "post" do
    end
  end
end
