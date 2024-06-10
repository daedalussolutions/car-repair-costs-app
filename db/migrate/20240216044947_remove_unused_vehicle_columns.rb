class RemoveUnusedVehicleColumns < ActiveRecord::Migration[7.1]
  def change
    remove_column :reviews, :vehicle_make
    remove_column :reviews, :vehicle_model
    remove_column :reviews, :vehicle_year
    remove_column :reviews, :business
    remove_column :reviews, :vehicle_make_id
    remove_column :reviews, :vehicle_model_id
    remove_column :reviews, :vehicle_year_id
  end
end
