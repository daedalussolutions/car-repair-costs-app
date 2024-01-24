class Service < ApplicationRecord
    has_many :reviews

    validates :title, length: { maximum: 50 }, presence: true
    validates :minimum_price, allow_blank: true
    validates :maximum_price, allow_blank: true
    validates :average_price, allow_blank: true
end
