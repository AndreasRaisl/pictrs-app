require 'rails_helper'

RSpec.describe "Photos", type: :request do
  describe "GET /photos" do
    it "returns http success" do
      get "/photos/"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/photos/new"
      expect(response).to have_http_status(:success)
    end
  end
end
