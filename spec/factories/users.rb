FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "person#{n}@example.com" }
    password "password"
    sequence(:username) { |n| "person#{n}" }
    role "user"
  end

  factory :admin, class: User do
    sequence(:email) { |n| "admin#{n}@example.com" }
    password "password"
    sequence(:username) { |n| "admin#{n}" }
    role "admin"
  end

end
