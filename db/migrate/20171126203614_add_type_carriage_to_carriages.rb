class AddTypeCarriageToCarriages < ActiveRecord::Migration[5.1]
  def change
  	add_column :railway_carriages, :type_carriage, :string
  end
end
