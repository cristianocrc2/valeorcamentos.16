require "rails_helper"

RSpec.describe FrequenciaController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/frequencia").to route_to("frequencia#index")
    end

    it "routes to #new" do
      expect(:get => "/frequencia/new").to route_to("frequencia#new")
    end

    it "routes to #show" do
      expect(:get => "/frequencia/1").to route_to("frequencia#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/frequencia/1/edit").to route_to("frequencia#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/frequencia").to route_to("frequencia#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/frequencia/1").to route_to("frequencia#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/frequencia/1").to route_to("frequencia#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/frequencia/1").to route_to("frequencia#destroy", :id => "1")
    end

  end
end
