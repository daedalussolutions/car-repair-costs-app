class VehicleMake < ApplicationRecord
    has_and_belongs_to_many :reviews
    has_many :vehicle_models
    validates :name, presence: true
end
