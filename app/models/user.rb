class User < ActiveRecord::Base
	before_save {self.email = email.downcase}
	validates :email, presence: true, uniqueness: true
	validates :password, length: {minimum: 6}
	has_secure_password
end
