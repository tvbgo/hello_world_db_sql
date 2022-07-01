class User < ActiveRecord::Base
	validates :email, uniqueness: true
	validates :email, format: { with: /^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$/ }
end