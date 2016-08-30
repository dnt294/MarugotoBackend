require 'rails_helper'

RSpec.describe "NewWords", type: :request do
  describe "GET /new_words" do
    it "works! (now write some real specs)" do
      get new_words_path
      expect(response).to have_http_status(200)
    end
  end
end
