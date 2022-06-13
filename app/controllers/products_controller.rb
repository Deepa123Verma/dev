class ProductsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    #product = Product.find(params[:id])
     @products = Product.all
    # render json: product
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
  end
 
  #  def create
  #    product = Product.new(product_type: params[:product_type], price: params[:price])
  #     if product.save
  #       render json: product
  #     else
  #       render json: {"error": product.errors.messages}
  #     end
  #   end

  # def create
  #   product = Product.new(product_type: params[:product][:product_type], price: params[:product][:price])
  #   if product.save
  #     render json: product
  #   else
  #     render json: {"error": product.errors.messages}
  #   end
  # end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  # def add_card 
  #   @product = Product.find(params[:id])
  #   @product.add_cart = true
  #   @product.save

  # end
  
  def delete
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private
    def product_params
      params.require(:product).permit(:product_type, :price,:image,:add_cart)
    end
end
