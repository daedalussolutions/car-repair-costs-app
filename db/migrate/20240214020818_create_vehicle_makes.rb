class CreateVehicleMakes < ActiveRecord::Migration[7.1]
  def change
    create_table :vehicle_makes do |t|
      t.string :name
      t.timestamps
    end
  end
end
