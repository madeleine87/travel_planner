class RemoveCityIdFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :city_id, :string
  end
end
