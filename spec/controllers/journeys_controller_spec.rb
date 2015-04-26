require 'rails_helper'

RSpec.describe JourneysController, type: :controller do
  login_user

  describe "GET #index" do
    it "returns http success" do
      journey1, journey2 = FactoryGirl.create(:journey), FactoryGirl.create(:journey)
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
      expect(assigns(:journeys)).to match_array([journey1, journey2])
    end
  end

  describe "GET #show" do
    it "returns http success" do
      journey1 = FactoryGirl.create(:journey, user: @user)
      get :show, id: journey1.id
      expect(response).to be_success
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show for different user" do
    it "returns http success" do
      journey1 = FactoryGirl.create(:journey)
      get :show, id: journey1.id
      expect(response).to have_http_status(:redirect)

    end
  end

  # describe "GET #edit" do
  #   it "returns http success" do
  #     get :edit
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #destroy" do
  #   it "returns http success" do
  #     get :destroy
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #create" do
  #   it "returns http success" do
  #     get :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #new" do
  #   it "returns http success" do
  #     get :new
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #update" do
  #   it "returns http success" do
  #     get :update
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
