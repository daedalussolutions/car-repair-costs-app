class AddModelReferenceForYear < ActiveRecord::Migration[7.1]
  def change
    add_reference :vehicle_years, :vehicle_model, foreign_key: true
  end
end
