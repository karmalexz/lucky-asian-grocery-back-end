class Order < ApplicationRecord
    belongs_to :user, optional: true
    has_many :orderLineItems
    enum status: [:unpaid, :paid]
end
