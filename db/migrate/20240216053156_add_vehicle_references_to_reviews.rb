class AddVehicleReferencesToReviews < ActiveRecord::Migration[7.1]
  def change
    add_reference :reviews, :vehicle_make, foreign_key: true
    add_reference :reviews, :vehicle_model, foreign_key: true
    add_reference :reviews, :vehicle_year, foreign_key: true
  end
end
