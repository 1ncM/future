class RailwayCarriagesController < ApplicationController
  def index
  	@railway_carriages = RailwayCarriage.all
  end

  def new
  	@railway_carriage = RailwayCarriage.new
  end
end