class User < ApplicationRecord
    has_many :cartLineItems
    has_many :orderLineItems
    has_many :orders

end
