class AddUserIdToJourneys < ActiveRecord::Migration
  def change
    add_column :journeys, :user_id, :integer
  end
end
