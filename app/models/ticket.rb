class Ticket < ApplicationRecord
	validates :number, :fio, :first_station_id, :last_station_id, :train_id, :user_id, presence: true
	belongs_to :user
  belongs_to :train
  belongs_to :first_station, class_name: "RailwayStation", foreign_key: :first_station_id
  belongs_to :last_station, class_name: "RailwayStation", foreign_key: :last_station_id

  after_create :send_notification
  after_destroy :delete_ticket

  def name_route
  	"#{first_station.title} - #{last_station.title}"
  end

  private

  def send_notification
  	TicketMailer.buy_ticket(self.user, self).deliver_now
  end

  def delete_ticket
  	TicketMailer.cancel_ticket(self.user, self).deliver_now
  end
end
