class Store < ActiveRecord::Base
	validates :name, uniqueness: true
end