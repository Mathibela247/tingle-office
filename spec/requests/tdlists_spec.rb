require 'rails_helper'

RSpec.describe "Tdlists", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/tdlists/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/tdlists/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/tdlists/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/tdlists/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
