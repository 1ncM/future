class RailwayCarriagesController < ApplicationController

  def index
  	@railway_carriages = RailwayCarriage.all
  end

  def show
    @railway_carriage = RailwayCarriage.find(params[:id])	
  end

  def new
  	@railway_carriage = RailwayCarriage.new
  end

  def create
		@railway_carriage = RailwayCarriage.new(railway_carriage_params)

	if @railway_carriage.save
	  redirect_to @railway_carriage
	else
	  render :new
	end
  end

  private

    def railway_carriage_params
      params.require(:railway_carriage).permit(:number, :train_id)
    end
end