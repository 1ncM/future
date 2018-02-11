class AddSortToTrains < ActiveRecord::Migration[5.1]
  def change
  	add_column :trains, :sort, :string
  end
end
