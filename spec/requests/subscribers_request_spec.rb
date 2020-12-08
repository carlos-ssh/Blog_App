require 'rails_helper'

RSpec.describe "Subscribers", type: :request do

  describe "GET /subs" do
    it "returns http success" do
      get "/subscribers/subs"
      expect(response).to have_http_status(:success)
    end
  end

end
