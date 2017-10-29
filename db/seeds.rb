
User.create!([
  {name: "Al Kippers", email: "ak@gmail.com", password: "sue", password_confirmation: "sue", admin: false},
  {name: "George Hamilton", email: "gh2@gmail.com", password: "sue", password_confirmation: "sue", admin: true}
])
Category.create!([
  {name: "Cheap"},
  {name: "Expensive"},
  {name: "Accessory"}
])
Supplier.create!([
  {name: "Super Computer Super Store", email: "IseeAll@gmail.com", phone_number: "800-588-2300"},
  {name: "Mega Ultra Computer Depot", email: "SuperAwesome@gmail.com", phone_number: "800-345-7890"},
  {name: "Computers R Us", email: "TrixAreForKids@gmail.com", phone_number: "800-135-7911"}
])
Product.create!([
  {name: "Geforce GTX 1070 oc edition", description: "8 GB GDDR5, 1506 mhz base clock, 1709 mhz boost clock", price: 470, image: "https://media.ldlc.com/bo/images/fiches/carte_graphique/nvidia_geforce_gtx_pascal/design_gtx-1070.jpg", supplier_id: 2},
  {name: "Corsair Strafe RGB keyboard", description: "mechanical cherry red key switches, rgb lighting ", price: 110, image: "http://www.legitreviews.com/wp-content/uploads/2015/10/Corsair-STRAFE-RGB-Feature-Image.jpg", supplier_id: 3},
  {name: "Asus q24er 24-inch Monitor", description: "24-inch ips display, 60 hz refresh rate", price: 120, image: "https://images-na.ssl-images-amazon.com/images/I/71-Q4vJb9QL._SX355_.jpg", supplier_id: 2},
  {name: "Logitech g502 proteous spectrum", description: "Wired, highest dpi capabilities, pinpoint accuracy ", price: 55, image: "https://i.ebayimg.com/images/g/yJIAAOSwwTlUo7NR/s-l300.jpg", supplier_id: 2},
  {name: "Pre-built computer ", description: "Intel core i7 7700k, Geforce GTX 1080, mini ITX ", price: 1900, image: "https://www.parts-people.com/blog/wp-content/uploads/2017/03/CorsairOneGamingPc-300x200.png", supplier_id: 3},
  {name: "Steel Series Arctis 5 Wireless Headphones", description: "Wireless, 7.1 surround sound, long battery life", price: 100, image: "https://tpucdn.com/reviews/SteelSeries/Arctis_5/images/box-front_small.jpg", supplier_id: 3}
])
CategoryProduct.create!([
  {product_id: 17, category_id: 2},
  {product_id: 17, category_id: 3},
  {product_id: 19, category_id: 1},
  {product_id: 19, category_id: 3},
  {product_id: 23, category_id: 1},
  {product_id: 23, category_id: 3}
])

