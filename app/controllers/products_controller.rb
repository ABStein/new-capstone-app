class ProductsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @products = Product.all

    sort_attribute = params[:sort]
    order_attribute = params[:sort_order]
    discount_amount = params[:discount]
    category_attribute = params[:category]

    if category_attribute
      category = Category.find_by(name: category_attribute)
      @products = category.products
    end

    if discount_amount
      @products = @products.where("price < ?", discount_amount)
    end

    if sort_attribute && order_attribute
      @products = @products.order({sort_attribute => order_attribute})
    elsif sort_attribute
      @products = @products.order(sort_attribute)
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
    if product.save
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
