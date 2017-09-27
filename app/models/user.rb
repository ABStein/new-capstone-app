class User < ApplicationRecord
  has_secure_password
  has_many :orders
  has_many :carted_products
end
#created our foreign keys between carted_product, user, product, and order models. 