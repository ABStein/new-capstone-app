class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @products = Product.first
  end

  def new
    
  end

  def create
    product = Product.new(
                          name: params[:name],
                          description: params[:description],
                          price: params[:price],
                          image: params[:image]
                          )

    product.save
  end

  def edit
    @product = product.find(params[:id]) 
  end

  def update
    product = Product.find(params[:id])

    product.assign_attributes(
      )
    
  end

  def destroy
    @product = product.find(params[:id])
    product.destroy
  end
end
