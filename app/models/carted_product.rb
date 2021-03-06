class CartedProduct < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product
  belongs_to :user

  validates :quantity, presence: true
  validates :quantity, numericality: {only_integer: true}
  validates :quantity, numericality: {greater_than: 0}



  def subtotal
    product.price * quantity  
  end

  def calculate_totals
    sum = 0 
    carted_products.each do |carted_product|
      sum += carted_product.subtotal
    end
    self.subtotal = sum
    self.tax = subtotal * 0.09
    self.total = subtotal + tax  
  end
end
 