class Search < ApplicationRecord

	def self.find_ticket(first_st, last_st)
		st1 = RailwayStation.find(first_st)
		st2 = RailwayStation.find(last_st)
		st1.routes & st2.routes
	end
		
end