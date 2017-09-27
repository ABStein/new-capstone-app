class CartedProductsController < ApplicationController
  def index
    @carted_products = CartedProduct.all #current_user.carted_products.where(staus: "carted")
  end

  def new
    
  end

  def create
    carted_product = CartedProduct.new(
                                        user_id: current_user.id,
                                        product_id: params[:product_id],
                                        quantity: params[:quantity],
                                        status: params[:status]# status: "carted"
                                        )
    carted_product.save
    flash[:success] = "Successfully Added To Cart"
    redirect_to "/carted_products"

  end

  def show
    
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end
end
