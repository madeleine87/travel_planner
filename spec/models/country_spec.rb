require 'rails_helper'

RSpec.describe Country, type: :model do
  it "can't create countries with the same name" do
  	FactoryGirl.create(:country, name: "Polska")
  	country = FactoryGirl.build(:country, name: "Polska")

  	expect(country.valid?).to be false
	end
end
