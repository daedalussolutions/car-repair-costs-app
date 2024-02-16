class Review < ApplicationRecord
    belongs_to :service
    has_one :vehicle_make
    has_one :vehicle_model
    has_one :vehicle_year

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :title, length: { maximum: 299}, presence: true
    validates :price, numericality: true, numericality: { greater_than: 0, less_than: 5000 }, presence: true
    validates :description, allow_blank: true, length: { maximum: 400}
    validates :date, presence: true
    validates :user_id, presence: true
end
