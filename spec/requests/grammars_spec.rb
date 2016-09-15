require 'rails_helper'

RSpec.describe "Grammars", type: :request do
  describe "GET /grammars" do
    it "works! (now write some real specs)" do
      get grammars_path
      expect(response).to have_http_status(200)
    end
  end
end
