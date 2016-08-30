require 'rails_helper'

RSpec.describe "verb_forms/index", type: :view do
  before(:each) do
    assign(:verb_forms, [
      VerbForm.create!(),
      VerbForm.create!()
    ])
  end

  it "renders a list of verb_forms" do
    render
  end
end
