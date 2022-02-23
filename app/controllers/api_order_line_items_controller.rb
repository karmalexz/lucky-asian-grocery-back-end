class ApiOrderLineItemsController < ApplicationController
  
  before_action :authenticate_user

  def index
    @order_line_items = OrderLineItems.all
    render json: @order_line_items

  end

  def add 
    # TODO :do validation
    @order_line_item = OrderLineItem.create cart_line_item_id: params[:cart_line_item_id], user_id: current_user.id 
    render json: @order_line_item
  end
  
end
