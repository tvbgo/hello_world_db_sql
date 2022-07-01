class Review < ActiveRecord::Base
	validates :user, uniqueness: {scope: :purchase}
end