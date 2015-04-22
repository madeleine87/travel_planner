FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "person#{n}@example.com" }
    password "password"
    sequence(:username) { |n| "person#{n}" }
    role "user"
  end

end
