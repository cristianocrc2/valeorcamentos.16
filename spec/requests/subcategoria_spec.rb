require 'rails_helper'

RSpec.describe "Subcategoria", type: :request do
  describe "GET /subcategoria" do
    it "works! (now write some real specs)" do
      get subcategoria_path
      expect(response).to have_http_status(200)
    end
  end
end
