class RailwayCarriage < ApplicationRecord
	validates :number, presence: true
	validates :number, uniqueness: { scope: :train, message: "already exists"}

	belongs_to :train

	before_validation :set_number

	scope :head, -> { RailwayCarriage.order("number ASC") }
	scope :end, -> { RailwayCarriage.order("number DESC") }

	private

	def set_number
		self.number = self.class.superclass.count + 1
	end

end
