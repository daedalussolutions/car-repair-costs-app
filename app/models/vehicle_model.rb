class VehicleModel < ApplicationRecord
  validates :name, presence: true
  belongs_to :vehicle_make
  has_many :vehicle_years
end
