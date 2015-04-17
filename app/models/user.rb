class User < ActiveRecord::Base
	has_many :journeys
	belongs_to :city
	has_one :authentication

	validates :username, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true
	validates_confirmation_of :password
end
