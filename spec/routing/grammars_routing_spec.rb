require "rails_helper"

RSpec.describe GrammarsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/grammars").to route_to("grammars#index")
    end

    it "routes to #new" do
      expect(:get => "/grammars/new").to route_to("grammars#new")
    end

    it "routes to #show" do
      expect(:get => "/grammars/1").to route_to("grammars#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/grammars/1/edit").to route_to("grammars#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/grammars").to route_to("grammars#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/grammars/1").to route_to("grammars#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/grammars/1").to route_to("grammars#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/grammars/1").to route_to("grammars#destroy", :id => "1")
    end

  end
end
