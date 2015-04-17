class CreateJourneys < ActiveRecord::Migration
  def change
    create_table :journeys do |t|
    	t.string :from
    	t.string :to
    	t.datetime :start_date
    	t.datetime :end_date
    	t.integer :km
		t.timestamps
    end
  end
end
