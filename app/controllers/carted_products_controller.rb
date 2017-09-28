class CartedProductsController < ApplicationController
  def index
    if current_user && current_user.current_cart.any?
      @carted_products = current_user.current_cart
    else
      flash[:warning] = "There's nothing in your cart, check out our listing!" 
      redirect_to '/'
    end
  end

  def create
    carted_product = CartedProduct.new(
                                        user_id: current_user.id,
                                        product_id: params[:product_id],
                                        quantity: params[:quantity],
                                        status: "carted"
                                        )
    carted_product.save
    flash[:success] = "Successfully Added To Cart"
    redirect_to "/carted_products"

  end

  def show
    
  end




  def destroy
    carted_product = CartedProduct.find(params[:id])
    carted_product.update(status: "removed")
    flash[:success] = "Item Successfully removed"
    redirect_to "/carted_products"  
  end
end
