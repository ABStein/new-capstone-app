class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :carted_products
  has_many :products, through: :carted_products
  has_many :carted_products
  has_many :users, through: :carted_products


  def calculate_subtotal
    self.subtotal = product.price * quantity
  end

  def calculate_tax
    self.tax = subtotal * 0.09
  end

  def calculate_total 
    self.total = subtotal + tax
  end

  def calculate_totals
    calculate_subtotal
    calculate_tax
    calculate_total
  end
end
#created our foreign keys between carted_product, user, product, and order models. 