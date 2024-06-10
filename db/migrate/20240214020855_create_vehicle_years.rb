class CreateVehicleYears < ActiveRecord::Migration[7.1]
  def change
    create_table :vehicle_years do |t|
      t.integer :year
      t.timestamps
    end
  end
end