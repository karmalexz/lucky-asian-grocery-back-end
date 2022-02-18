class Product < ApplicationRecord
    belongs_to :category
    has_many :reviews
    has_many :cartLineItems
    belongs_to :user

end
