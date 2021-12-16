require 'rails_helper'

RSpec.describe "Tops", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get 'http://localhost:3000/users/sign_in'
      expect(response).to have_http_status(:success)
    end
  end

end
