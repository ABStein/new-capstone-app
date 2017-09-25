class OrdersController < ApplicationController
  def new
    
  end

  def create
    # prduct = Product.find(params[:product_id])
    # subtotal = product.price * params[:quantity].to_i
    # tax = subtotal * 0.09
    # total = subtotal + tax


    order = Order.new(
                      user_id: current_user.id,
                      product_id: params[:product_id],
                      quantity: params[:quantity]
                      # subtotal: subtotal,
                      # tax: tax, 
                      # total: total
                      )
    order.calculate_totals
    order.save
    flash[:success] = "Successfully Created Order"
    redirect_to "/checkout/#{order.id}"
  end

  def show
    @order = Order.find(params[:id])
  end
end
