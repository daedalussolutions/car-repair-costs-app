class Service < ApplicationRecord
    has_many :reviews

    validates :title, length: { maximum: 50 }, presence: true
    validates :minimum_price, allow_blank: true, numericality: { greater_than: 0, less_than: 5000 }
    validates :maximum_price, allow_blank: true, numericality: { greater_than: 0, less_than: 5000 }
    validates :average_price, allow_blank: true, numericality: { greater_than: 0, less_than: 5000 }
end
