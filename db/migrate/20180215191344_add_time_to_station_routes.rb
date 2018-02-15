class AddTimeToStationRoutes < ActiveRecord::Migration[5.1]
  def change
  	add_column :railway_stations_routes, :arr, :time
  	add_column :railway_stations_routes, :dep, :time
  end
end
