class User < ApplicationRecord
  has_secure_password
  has_many :carted_products 
  has_many :orders, through: :carted_products
end
#created our foreign keys between carted_product, user, product, and order models. 