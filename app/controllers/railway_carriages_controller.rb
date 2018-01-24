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
	  	redirect_to railway_carriages_path(@railway_carriage)
		else
	  	render :new
		end
  end

  def destroy
    @railway_carriage = RailwayCarriage.find(params[:id])
    @railway_carriage.destroy
    redirect_to railway_carriages_path
  end

  private

    def railway_carriage_params
      params.require(:railway_carriage).permit(:number, :train_id, :type, :top_seats, :bottom_seats, :side_top_seats, :side_bottom_seats, :seat_places)
    end
end