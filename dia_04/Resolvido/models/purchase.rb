class Purchase < ActiveRecord::Base

	validate :valid_date?


	def valid_date?
    self.date <= Date.today
  end   
end