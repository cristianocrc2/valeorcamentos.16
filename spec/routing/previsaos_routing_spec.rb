require "rails_helper"

RSpec.describe PrevisaosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/previsaos").to route_to("previsaos#index")
    end

    it "routes to #new" do
      expect(:get => "/previsaos/new").to route_to("previsaos#new")
    end

    it "routes to #show" do
      expect(:get => "/previsaos/1").to route_to("previsaos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/previsaos/1/edit").to route_to("previsaos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/previsaos").to route_to("previsaos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/previsaos/1").to route_to("previsaos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/previsaos/1").to route_to("previsaos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/previsaos/1").to route_to("previsaos#destroy", :id => "1")
    end

  end
end
