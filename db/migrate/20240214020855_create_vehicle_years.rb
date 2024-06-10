class CreateVehicleYears < ActiveRecord::Migration[7.1]
  def change
    create_table :vehicle_years do |t|
      t.integer :year
      t.references :vehicle_model, null: false, foreign_key: true

      t.timestamps
    end
  end
end