class OrdersController < ApplicationController

  before_action :authenticate_user

  def index
    @orders = Order.all
  end
  
  def show
    @order = Order.find params[:id]
    
  end

  def create
    order = Order.create user_id:current_user.id, address:params[:address], status: :unpaid #name and payment type migration required 
    if order.persisted?
      current_user.cart_line_items.each do |cart_item|

        #create order line item fields from line item
        order_item = OrderLineItem.create order_id: order.id, qty: cart_item.qty, product_id: cart_item.product_id

        #TODO:can delete cart_line_items for user after the status has been changed to paid
      end #end of each

    end
    #Shoudl get a panel that has a paynow and pass through the order ID to the backend and the form that takes the credit card number and happens before the pay now button and submit the cc number to the backend which we wont do but it will simulate what we need to do . First thing to beware of thee response that gets the line_tiem reponse server ID we need to save that state of the order_id and we submit that ID and that is for the final pay_id and that would change the stet from unpaid to paid . And if that works with the change from paid to unpiad, we can now go current_user.cart_line_items.destroy_all ONLY when the order has sucessfully updated the order from unpaid to paid. 

    # STRIPE: And once the fake cc credit ards details are taken then we are ready to drop in stripe and then at least the db is working and we can finally implement that.

    render json: order, include: :order_line_items
    #return object that works with
  end

end
