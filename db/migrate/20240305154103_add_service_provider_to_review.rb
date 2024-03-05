class AddServiceProviderToReview < ActiveRecord::Migration[7.1]
  def change
    add_column :reviews, :service_provider, :string
  end
end
