class AddStationIndexToTickets < ActiveRecord::Migration[5.1]
  def change
  	add_index :tickets, :first_station_id
  	add_index :tickets, :last_station_id
  end
end
