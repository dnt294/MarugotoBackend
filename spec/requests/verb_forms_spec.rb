require 'rails_helper'

RSpec.describe "VerbForms", type: :request do
  describe "GET /verb_forms" do
    it "works! (now write some real specs)" do
      get verb_forms_path
      expect(response).to have_http_status(200)
    end
  end
end
