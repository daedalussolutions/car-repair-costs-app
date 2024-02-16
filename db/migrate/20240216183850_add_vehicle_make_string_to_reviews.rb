class AddVehicleMakeStringToReviews < ActiveRecord::Migration[7.1]
  def change
    add_column :reviews, :vehicle_make_name, :string
    add_column :reviews, :vehicle_model_name, :string
    add_column :reviews, :vehicle_year_year, :string
  end
end
