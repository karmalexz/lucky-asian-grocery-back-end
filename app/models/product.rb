class Product < ApplicationRecord
    belongs_to :category, optional: true
    has_many :reviews
    has_many :cartLineItems
    belongs_to :user, optional: true

end
