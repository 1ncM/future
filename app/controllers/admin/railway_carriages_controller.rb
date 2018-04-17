class Admin::RailwayCarriagesController < Admin::BaseController
  before_action :set_train, only: [:new, :create]

  def show
    @railway_carriage = RailwayCarriage.find(params[:id])
    render @railway_carriage
  end

  def new
    @railway_carriage = @train.railway_carriages.new
  end

  def create
    @railway_carriage = @train.railway_carriages.new(railway_carriage_params)

    if @railway_carriage.save
      redirect_to admin_railway_carriage_path(@railway_carriage)
    else
      render :new
    end
  end

  def edit
    @railway_carriage = RailwayCarriage.find(params[:id])
  end

  def update
    @railway_carriage = RailwayCarriage.find(params[:id])

    if @railway_carriage.update(railway_carriage_params)
      redirect_to admin_railway_carriage_path(@railway_carriage)
    else
      render :edit
    end
  end

  private

    def set_train
      @train = Train.find(params[:train_id])      
    end

    def railway_carriage_params
      params.require(:railway_carriage).permit(:number, :train_id, :type, :top_seats, :bottom_seats, :side_top_seats, :side_bottom_seats, :seat_places)
    end
end