class OrdersController < ApplicationController
  def new
    
  end

  def create
    carted_products = current_user.carted_products

    order = Order.new(
                      user_id: current_user.id,
                      # product_id: params[:product_id],
                      # quantity: params[:quantity]
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
