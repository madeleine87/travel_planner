class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :journeys
	belongs_to :city

	ROLES = %w[admin user]

	validates :username, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true
	validates_confirmation_of :password
	validates :role, presence: true, inclusion: { in: ROLES }

	def role?(role)
		self.role == role.to_s
  end

end

