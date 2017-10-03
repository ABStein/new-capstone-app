class ProductsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

  def index


    @products = Product.all


    sort_attribute = params[:sort]
    sort_by_attribute = params[:sort_by]
    sort_by_discount = params[:discount]
    random_product = params[:random]
    sort_category = params[:category]

    if sort_attribute
      @products = @products.order(sort_attribute)
    end

    if sort_attribute && sort_by_attribute
      @products = @products.order(sort_attribute).reverse
    end

    if sort_by_discount 
      @products = Product.where("price < ?", sort_by_discount)
      # temp_products = []
      # @products.each do |product|
      #   if product.discounted?
      #     temp_products << product
      #   end
      # end
      # @products = temp_products
    end

    if sort_category
      category = Category.find_by(name: sort_category)
      @products = category.products
    end


  end


  
  def new
    @suppliers = Supplier.all
    @product = Product.new
  end

  def create
    @product = Product.new(
                          name: params[:name],
                          description: params[:description],
                          price: params[:price],
                          image: params[:image]
                          )

    if @product.save
      flash[:success] = "Product successfully created"
      redirect_to "/products/#{@product.id}"
    else
      @suppliers = Supplier.all
      @errors = @product.errors.full_messages
      # flash[:danger] = "You have failed, fill things in!"
      render "new.html.erb"
    end
  end
  
  def show
    @product = Product.find(params[:id])
    @user = User.all
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
    if 
    product.save
    flash[:success] = "Product successfully updated"
    redirect_to "/products/#{product.id}"
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    flash[:success] = "Product successfully deleted"
    redirect_to "/products"
  end
end
