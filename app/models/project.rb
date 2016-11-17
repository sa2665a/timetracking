class Project < ApplicationRecord
	has_many :time_entries

	def self.clean_old(date = 1.week.ago)
		where('created at < ?', date).destroy_all
	end

end
