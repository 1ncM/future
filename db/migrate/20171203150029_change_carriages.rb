class ChangeCarriages < ActiveRecord::Migration[5.1]
  def change
  	remove_column :railway_carriages, :type_carriage
  	rename_column :railway_carriages, :up_seats, :top_seats
  	rename_column :railway_carriages, :down_seats, :bottom_seats
  	add_column :railway_carriages, :side_top_seats, :integer
  	add_column :railway_carriages, :side_bottom_seats, :integer
  	add_column :railway_carriages, :seat_places, :integer
  	add_column :railway_carriages, :type, :string
  end
end
