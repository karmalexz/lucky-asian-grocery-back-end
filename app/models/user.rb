class User < ApplicationRecord
    has_secure_password
    has_many :cartLineItems
    has_many :orderLineItems
    has_many :orders

end
