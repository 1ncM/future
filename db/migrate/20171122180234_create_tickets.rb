class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.string :number
      t.integer :first_station_id
      t.integer :last_station_id
      t.integer :train_id
      t.timestamps
    end
  end
end
