# product = Product.new(
#                       name: "basketball",
#                       description: "round orange ball",
#                       price: 15.99,
#                       image: "http://nirsa.net/nirsa/wp-content/uploads/NIRSA-Basketball-TF500-900x600.png"
#                       )

# product.save


# product = Product.new(
#                       name: "sneakers",
#                       description: "Nike Air Jordan",
#                       price: 145.99,
#                       image: "https://cdn.shopify.com/s/files/1/0516/1357/products/881426-009-p_large.jpg?v=1486117217" 
#                      )

# product.save

# product = Product.new(
#                       name: "Steph Curry Jersey",
#                       description: "Authentic away jersey of Steph Curry",
#                       price: 199.99,
#                       image: "http://nba.frgimages.com/FFImage/thumb.aspx?i=/productImages%2F_1741000%2Fff_1741475_xl.jpg&w=600" 
#                       )

# product.save




# Supplier.create(name: "Super Computer Super Store", email: "IseeAll@gmail.com", phone_number: "800-588-2300")
# Supplier.create(name: "Mega Ultra Computer Depot", email: "SuperAwesome@gmail.com", phone_number: "800-345-7890")
# Supplier.create(name: "Computers R Us", email: "TrixAreForKids@gmail.com", phone_number: "800-135-7911")

products = Product.all 

products.each do |product| 
  product.update(supplier_id: rand(1..3) )
end
