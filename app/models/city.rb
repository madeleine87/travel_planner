class City < ActiveRecord::Base
	belongs_to :country
	has_one :user

	validates :name, presence: true, uniqueness: true
	validates :country_id, presence: true
end
