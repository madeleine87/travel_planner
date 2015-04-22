FactoryGirl.define do
  factory :journey do
    user
    travel_mode
    start_date Time.now
    end_date Time.now + 1.month
    km 250
    from_city factory: :city
    to_city factory: :city
  end

end
