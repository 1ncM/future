class AddTrainIdToRailwayCarriages < ActiveRecord::Migration[5.1]
  def change
  	add_belongs_to :railway_carriages, :train
  end
end
