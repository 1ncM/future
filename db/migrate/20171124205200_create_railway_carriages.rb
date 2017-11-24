class CreateRailwayCarriages < ActiveRecord::Migration[5.1]
  def change
    create_table :railway_carriages do |t|

      t.timestamps
    end
  end
end
