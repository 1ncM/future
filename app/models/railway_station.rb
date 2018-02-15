class RailwayStation < ApplicationRecord
  validates :title, presence: true
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes

  scope :ordered, -> { joins(:railway_stations_routes).order("railway_stations_routes.position").uniq }

  def update_position(position, route)
  	station_route = railway_stations_routes.where(route: route).first
  	station_route.update(position: position) if station_route
  end

  def update_time(route, arr, dep)
    station_route = railway_stations_routes.where(route: route).first
    station_route.update(arr: arr, dep: dep) if station_route
  end

  def time_in_arr(route)
    station_route = railway_stations_routes.where(route: route).first
    station_route.try(:arr)
  end

  def time_in_dep(route)
    station_route = railway_stations_routes.where(route: route).first
    station_route.try(:dep)
  end

  def position_in(route)
  	station_route = railway_stations_routes.where(route: route).first
  	station_route.try(:position)
  end
end
