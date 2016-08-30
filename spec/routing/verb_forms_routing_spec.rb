require "rails_helper"

RSpec.describe VerbFormsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/verb_forms").to route_to("verb_forms#index")
    end

    it "routes to #new" do
      expect(:get => "/verb_forms/new").to route_to("verb_forms#new")
    end

    it "routes to #show" do
      expect(:get => "/verb_forms/1").to route_to("verb_forms#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/verb_forms/1/edit").to route_to("verb_forms#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/verb_forms").to route_to("verb_forms#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/verb_forms/1").to route_to("verb_forms#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/verb_forms/1").to route_to("verb_forms#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/verb_forms/1").to route_to("verb_forms#destroy", :id => "1")
    end

  end
end
