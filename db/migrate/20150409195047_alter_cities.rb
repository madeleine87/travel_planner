class AlterCities < ActiveRecord::Migration
  def up
     rename_column :cities, :city, :name
  end

  def down
     rename_column :cities, :name, :city
  end
end
