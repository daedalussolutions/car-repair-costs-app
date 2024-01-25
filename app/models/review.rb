class Review < ApplicationRecord
    belongs_to :service
    belongs_to :user

    validates :title, length: { maximum: 100}, numericality: { greater_than: 0, less_than: 5000 }, presence: true
    validates :price, numericality: true, presence: true
    validates :description, allow_blank: true, length: { maximum: 400}
    validates :date, presence: true
end
