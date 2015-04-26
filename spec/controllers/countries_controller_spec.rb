require 'rails_helper'

RSpec.describe CountriesController, type: :controller do
  login_admin

  describe "GET #index" do
    it "returns http success" do
      country1, country2 = FactoryGirl.create(:country), FactoryGirl.create(:country)
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
      expect(assigns(:countries)).to match_array([country1, country2])
    end
  end

  describe "GET #show" do
    it "returns http success" do
      country1 = FactoryGirl.create(:country)
      get :show, id: country1.id
      expect(response).to have_http_status(:success)
    end
  end
end
