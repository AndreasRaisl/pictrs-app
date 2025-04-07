require 'rails_helper'

RSpec.describe "Static Pages", type: :request do
  describe "GET /" do
    it "returns a successful response" do
      get "/"
      expect(response).to have_http_status(:ok)
    end

    it "renders the home page content" do
      get "/"
      expect(response.body).to include("Bahnbilder App")
    end
  end

  describe "GET /help" do
    it "returns a successful response" do
      get "/help"
      expect(response).to have_http_status(:ok)
    end

    it "renders the help page content" do
      get "/help"
      expect(response.body).to include("Fragen")
    end
  end


  describe "GET /about" do
    it "returns a successful response" do
      get "/about"
      expect(response).to have_http_status(:ok)
    end

    it "renders the about page content" do
      get "/about"
      expect(response.body).to include("Worum gehts")
    end
  end

  describe "GET /contact" do
    it "returns a successful response" do
      get "/contact"
      expect(response).to have_http_status(:ok)
    end

    it "renders the contact page content" do
      get "/contact"
      expect(response.body).to include("Kontakt")
    end
  end
end


