class User < ApplicationRecord
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, uniqueness: true, 
				format: { with: VALID_EMAIL_REGEX }
	validates :password, presence: true
	validates :first_name, :last_name, 
			  presence: true, length: { minimum: 3, maximum: 20 }


	def full_name
		"#{first_name} #{last_name}"
	end
end
