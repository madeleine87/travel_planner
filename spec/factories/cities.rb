FactoryGirl.define do
  factory :city do
    sequence(:name) { |n| "city#{n}" }
    country
  end

end
