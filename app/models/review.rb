class Review < ApplicationRecord
    belongs_to :service
    belongs_to :user

    validates :title, length: { maximum: 100}, presence: true
    validates :price, numericality: true, maximum: 5000, presence: true
    validates :description, allow_blank: true
    validates :date, presence: true
end
