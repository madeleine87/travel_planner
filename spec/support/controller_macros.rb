module ControllerMacros
  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      @user = FactoryGirl.create(:user)
      sign_in @user
    end
  end

  def login_admin
  	before(:each) do
  		@request.env["devise.mapping"] = Devise.mappings[:user]
  		@admin = FactoryGirl.create(:admin)
  		sign_in @admin
  	end
  end
end
