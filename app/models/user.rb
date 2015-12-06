class User < ActiveRecord::Base
	has_many :posts, dependent: :destroy
	has_many :comments, dependent: :destroy
	validates_presence_of :first_name, :last_name, :email, message: "first name, last name, and email cannot be blank"
end
