class RemoveDataFromJourney < ActiveRecord::Migration
  def change
    remove_column :journeys, :from_city_id, :string
    remove_column :journeys, :to_city_id, :string
    remove_column :journeys, :travel_mode_id, :string
    remove_column :journeys, :user_id, :string
  end
end
