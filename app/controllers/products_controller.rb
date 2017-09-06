class ProductsController < ApplicationController
  def index
    @products = Product.all
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
    flash[:success] = "Product successfully created"
    redirect_to "/products/#{product.id}"
  end
  
  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id]) 
  end

  def update
    product = Product.find(params[:id])

    product.assign_attributes(
                              name: params[:name],
                              description: params[:description],
                              price: params[:price],
                              image: params[:image]
                              )

    product.save
    flash[:success] = "Product successfully updated"
    redirect_to "/products/#{product.id}"
    
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    flash[:success] = "Product successfully deleted"
    redirect_to "/products"
  end
end
