class Journey < ActiveRecord::Base
	belongs_to :user
	belongs_to :from_city, class_name: "City"
	belongs_to :to_city, class_name: "City"
	belongs_to :travel_mode

	validates :km, numericality: { greater_than: 0 }
end
