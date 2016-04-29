require "rails_helper"

RSpec.describe SubcategoriaController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/subcategoria").to route_to("subcategoria#index")
    end

    it "routes to #new" do
      expect(:get => "/subcategoria/new").to route_to("subcategoria#new")
    end

    it "routes to #show" do
      expect(:get => "/subcategoria/1").to route_to("subcategoria#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/subcategoria/1/edit").to route_to("subcategoria#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/subcategoria").to route_to("subcategoria#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/subcategoria/1").to route_to("subcategoria#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/subcategoria/1").to route_to("subcategoria#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/subcategoria/1").to route_to("subcategoria#destroy", :id => "1")
    end

  end
end
