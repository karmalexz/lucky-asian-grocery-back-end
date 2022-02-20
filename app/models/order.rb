class Order < ApplicationRecord
    belongs_to :user
    has_many :orderLineItems
    enum status: [:unpaid, :paid]
end
