class SedentaryCarriage < RailwayCarriage
	validates :seat_places, presence: true
end