class CartedProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product
  belongs_to :user
end
#created our foreign keys between carted_product, user, product, and order models. 