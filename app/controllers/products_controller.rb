class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]


  def new
    @product = Product.new
  end

  def create
    Product.create product_params
    redirect_to products_path
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find params[:id]
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @product.to_json }
    end
    
  end

  def edit
    @product = Product.find params[:id]
  end

  def update
    @product = Product.find params[:id]
    @product.update product_params
    redirect_to product_path(params[:id])
  end

  def destroy
    Product.destroy params[:id]
    respond_to do |format|
      format.html { redirect_to products_path, notice: 'Product deleted.' }
      format.json { head :no_content }
    end
  
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end
  def product_params
    params.require(:product).permit(:name, :price, :description, :image, :stock )
  end # of private

end#of class
