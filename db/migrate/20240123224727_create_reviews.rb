class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :price
      t.string :description
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.timestamps
    end
  end
end
