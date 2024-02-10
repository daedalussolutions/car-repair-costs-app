class AddBusinessAndVehicleToReviews < ActiveRecord::Migration[7.1]
  def change
    add_column :reviews, :vehicle_make, :string
    add_column :reviews, :vehicle_model, :string
    add_column :reviews, :vehicle_year, :string
    add_column :reviews, :business, :string
  end
end
