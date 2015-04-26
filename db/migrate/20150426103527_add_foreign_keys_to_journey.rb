class AddForeignKeysToJourney < ActiveRecord::Migration
  def change
    add_reference :journeys, :from_city, index: true, foreign_key: true
    add_reference :journeys, :to_city, index: true, foreign_key: true
    add_reference :journeys, :travel_mode, index: true, foreign_key: true
    add_reference :journeys, :user, index: true, foreign_key: true
  end
end
