class RailwayCarriagesController < ApplicationController
  def index
  	@railway_carriages = RailwayCarriage.all
  end
end