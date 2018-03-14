class AddIndexToCarriages < ActiveRecord::Migration[5.1]
  def change
  	add_index :railway_carriages, [:id, :type]
  end
end
