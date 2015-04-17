class CreateTravelModes < ActiveRecord::Migration
  def change
    create_table :travel_modes do |t|
      t.string :name

      t.timestamps
    end
  end
end
