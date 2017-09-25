class Product < ApplicationRecord
  belongs_to :supplier
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :products, through: :carted_products
  #created our foreign keys between carted_product, user, product, and order models.  

  
  def description_list
    description.split(", ")
  end

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def sale_message
    if discounted? < 200 #this is a reader method of the attribute of price
      "Discount Item!"
    else
      "Everyday Value!"
    end
  end
  
  def discounted?
    if price < 200
      true
    else
      false
    end
  end

  def tax 
    price * 0.09
  end

  def total
    price + tax 
  end  
end
