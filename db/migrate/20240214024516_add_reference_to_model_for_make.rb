class AddReferenceToModelForMake < ActiveRecord::Migration[7.1]
  def change
    add_reference :vehicle_models, :vehicle_year, foreign_key: true
  end
end
