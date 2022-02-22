class CartLineItem < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :product, optional: true

    def update_price
        @total = self.product.price * self.qty
    end

end
