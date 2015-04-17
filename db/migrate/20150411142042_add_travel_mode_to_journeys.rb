class AddTravelModeToJourneys < ActiveRecord::Migration
  def change
    add_column :journeys, :travel_mode_id, :integer
  end
end
