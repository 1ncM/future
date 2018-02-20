class SearchesController < ApplicationController

	def show
	end

	def new
		@first_station = params[:search][:first_station_id]
		@last_station = params[:search][:last_station_id]
		@routes = Search.find_ticket(@first_station, @last_station)
	end

end