require "rails_helper"

RSpec.describe ThingItemsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/thing_items").to route_to("thing_items#index")
    end

    it "routes to #new" do
      expect(:get => "/thing_items/new").to route_to("thing_items#new")
    end

    it "routes to #show" do
      expect(:get => "/thing_items/1").to route_to("thing_items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/thing_items/1/edit").to route_to("thing_items#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/thing_items").to route_to("thing_items#create")
    end

    it "routes to #update" do
      expect(:put => "/thing_items/1").to route_to("thing_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/thing_items/1").to route_to("thing_items#destroy", :id => "1")
    end

  end
end
