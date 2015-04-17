class AddCitiesToJourneys < ActiveRecord::Migration
  def change
    add_column :journeys, :from_city_id, :integer
    add_column :journeys, :to_city_id, :integer
    remove_column :journeys, :from
    remove_column :journeys, :to
  end


end
