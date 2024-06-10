class CreateVehicleMakes < ActiveRecord::Migration[7.1]
  def change
    create_table :vehicle_makes do |t|
      t.string :name
      t.references :vehicle_model, foreign_key: true
      t.timestamps
    end
  end
end
