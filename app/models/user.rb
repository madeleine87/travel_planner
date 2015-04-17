class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :journeys
	belongs_to :city
	

	validates :username, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true
	validates_confirmation_of :password
end
