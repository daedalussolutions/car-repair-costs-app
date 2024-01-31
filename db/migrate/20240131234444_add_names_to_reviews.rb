class AddNamesToReviews < ActiveRecord::Migration[7.1]
  def change
    add_column :reviews, :first_name, :string
    add_column :reviews, :last_name, :string
  end
end
