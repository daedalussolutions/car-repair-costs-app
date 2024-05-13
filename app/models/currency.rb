class Currency < ApplicationRecord
    validates :code, presence: true
end
