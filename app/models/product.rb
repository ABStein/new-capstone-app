class Product < ApplicationRecord
  def description_list
    description.split(", ")
  end
end
