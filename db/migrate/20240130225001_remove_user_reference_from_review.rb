class RemoveUserReferenceFromReview < ActiveRecord::Migration[7.1]
  def change
    remove_reference :services, :user, null: false, foreign_key: true
  end
end
