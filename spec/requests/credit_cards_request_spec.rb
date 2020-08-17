require 'rails_helper'

RSpec.describe "CreditCards", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/credit_cards/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/credit_cards/create"
      expect(response).to have_http_status(:success)
    end
  end

end
