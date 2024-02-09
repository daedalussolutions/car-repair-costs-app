class Service < ApplicationRecord
    has_many :reviews

    validates :title, length: { maximum: 50 }, presence: true
    validates :description, length: { maximum: 250 }, allow_blank: true
    validates :minimum_price, allow_blank: true, numericality: { greater_than: 0, less_than: 9999 }
    validates :maximum_price, allow_blank: true, numericality: { greater_than: 0, less_than: 9999 }
    validates :average_price, allow_blank: true, numericality: { greater_than: 0, less_than: 9999 }


    def calculate_average_price
        lowest_price_review = reviews.order(price: :asc).first
        update(minimum_price: lowest_price_review.price) if lowest_price_review

        highest_price_review = reviews.order(price: :desc).first
        update(maximum_price: highest_price_review.price) if highest_price_review

        update(average_price: (highest_price_review.price + lowest_price_review.price) / 2)
    end

end
