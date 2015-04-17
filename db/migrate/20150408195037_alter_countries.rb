class AlterCountries < ActiveRecord::Migration
  def change
     rename_column :countries, :country, :name  	
  end
end
