class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
    	t.string :city
    	t.integer :country_id
    	
      t.timestamps
    end
  end
end
