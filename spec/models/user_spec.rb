require 'rails_helper'

RSpec.describe User, type: :model do
  it "can't create user with password length less than 8" do
  	user = FactoryGirl.build(:user, password: "dom")
  	expect(user.valid?).to be false
	end
end

RSpec.describe User, type: :model do
	it "cant't create two users with the same email adress" do
		FactoryGirl.create(:user, email: "email1@test.pl")
		user = FactoryGirl.build(:user, email: "email1@test.pl")
		expect(user.valid?).to be false
	end
end

# RSpec.describe User, type: :model do
# 	it "password can't be the same as email" do
# 		user = FactoryGirl.create(:user, email: "email1@test.pl", password: "email1@test.pl")
# 		expect(user.valid?).to be false
# 	end
# end
