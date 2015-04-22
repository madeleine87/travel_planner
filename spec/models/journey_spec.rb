require 'rails_helper'

RSpec.describe Journey, type: :model do
  it "can't create journey with km value less than 0" do
  	journey = FactoryGirl.build(:journey, km: -1)

  	expect(journey.valid?).to be false
	end
end
