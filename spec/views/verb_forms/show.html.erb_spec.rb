require 'rails_helper'

RSpec.describe "verb_forms/show", type: :view do
  before(:each) do
    @verb_form = assign(:verb_form, VerbForm.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
