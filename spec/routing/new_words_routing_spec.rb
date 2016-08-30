require "rails_helper"

RSpec.describe NewWordsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/new_words").to route_to("new_words#index")
    end

    it "routes to #new" do
      expect(:get => "/new_words/new").to route_to("new_words#new")
    end

    it "routes to #show" do
      expect(:get => "/new_words/1").to route_to("new_words#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/new_words/1/edit").to route_to("new_words#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/new_words").to route_to("new_words#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/new_words/1").to route_to("new_words#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/new_words/1").to route_to("new_words#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/new_words/1").to route_to("new_words#destroy", :id => "1")
    end

  end
end
