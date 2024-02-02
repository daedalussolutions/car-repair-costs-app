class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.string :title
      t.float :minimum_price
      t.float :maximum_price
      t.float :average_price
      t.timestamps
    end
  end
end
