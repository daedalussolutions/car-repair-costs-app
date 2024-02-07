class Service < ApplicationRecord
    has_many :reviews

    validates :title, length: { maximum: 50 }, presence: true
    validates :description, length: { maximum: 250 }, allow_blank: true
    validates :minimum_price, allow_blank: true, numericality: { greater_than: 0, less_than: 5000 }
    validates :maximum_price, allow_blank: true, numericality: { greater_than: 0, less_than: 5000 }
    validates :average_price, allow_blank: true, numericality: { greater_than: 0, less_than: 5000 }


    def calculate_average_price
        self.average_price = (minimum_price + maximum_price) / 2.0
    end

    def calculate_minimum_price 
    end

    def calculate_maximum_price
    end
end
