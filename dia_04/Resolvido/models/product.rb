class Product < ActiveRecord::Base
	belongs_to :store

	validates :title, uniqueness: {scope: :store}
	validates :value, numericality: { other_than: 0 }
end