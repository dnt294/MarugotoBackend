require 'rails_helper'

RSpec.describe "NewWord::VerbForms", type: :request do
  describe "GET /new_word_verb_forms" do
    it "works! (now write some real specs)" do
      get new_word_verb_forms_path
      expect(response).to have_http_status(200)
    end
  end
end
