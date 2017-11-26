class AddSeatsToRailwayCarriages < ActiveRecord::Migration[5.1]
  def change
  	add_column :railway_carriages, :up_seats, :integer
  	add_column :railway_carriages, :down_seats, :integer
  end
end
