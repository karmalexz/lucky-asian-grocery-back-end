class OrderLineItem < ApplicationRecord
    belong_to :user
    belong_to :order


end
