require 'rails_helper'

RSpec.describe "Frequencia", type: :request do
  describe "GET /frequencia" do
    it "works! (now write some real specs)" do
      get frequencia_path
      expect(response).to have_http_status(200)
    end
  end
end
