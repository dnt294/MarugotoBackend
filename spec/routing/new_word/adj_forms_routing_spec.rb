require "rails_helper"

RSpec.describe NewWord::AdjFormsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/new_word/adj_forms").to route_to("new_word/adj_forms#index")
    end

    it "routes to #new" do
      expect(:get => "/new_word/adj_forms/new").to route_to("new_word/adj_forms#new")
    end

    it "routes to #show" do
      expect(:get => "/new_word/adj_forms/1").to route_to("new_word/adj_forms#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/new_word/adj_forms/1/edit").to route_to("new_word/adj_forms#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/new_word/adj_forms").to route_to("new_word/adj_forms#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/new_word/adj_forms/1").to route_to("new_word/adj_forms#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/new_word/adj_forms/1").to route_to("new_word/adj_forms#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/new_word/adj_forms/1").to route_to("new_word/adj_forms#destroy", :id => "1")
    end

  end
end
