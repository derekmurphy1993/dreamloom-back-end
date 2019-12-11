require "rails_helper"

RSpec.describe DreamsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dreams").to route_to("dreams#index")
    end


    it "routes to #show" do
      expect(:get => "/dreams/1").to route_to("dreams#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/dreams").to route_to("dreams#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dreams/1").to route_to("dreams#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dreams/1").to route_to("dreams#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dreams/1").to route_to("dreams#destroy", :id => "1")
    end

  end
end
