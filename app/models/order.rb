class Order < ApplicationRecord
    belongs_to :user
    has_many :orderLineItems
end
