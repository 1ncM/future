class SearchesController < ApplicationController

	def show
		@stations = RailwayStation.all
		puts "SENDGRID_USERNAME: #{ENV['SENDGRID_USERNAME']}"
		puts "SENDGRID_PASSWORD: #{ENV['SENDGRID_PASSWORD']}"
	end

	def new
		@first_station = params[:search][:first_station_id]
		@last_station = params[:search][:last_station_id]
		@routes = Search.find_ticket(@first_station, @last_station)
	end

end