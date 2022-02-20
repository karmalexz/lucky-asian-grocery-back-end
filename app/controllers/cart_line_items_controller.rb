class CartLineItemsController < ApplicationController

 

  def index
  end

  def add 
    @item = LineItem.create product_id: params[:product_id], qty: 1, user_id: @current_user.id 
    redirect_to cart_index_path
  end
  

  def update_qty
    @item = LineItem.find_by(product_id: params[:product_id])
    @item.update qty: params[:qty]

    redirect_to cart_index_path
  end
  
  
  

  def destroy
    @item = LineItem.find_by(product_id: params[:product_id])
    @item.destroy

    redirect_to cart_index_path
  end



end
