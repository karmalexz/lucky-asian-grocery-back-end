
print "Creating users..."

User.destroy_all

u0 = User.create! first_name: "Admin", last_name: "Admin", email: "admin@ga.co", phone: "0478940767", address: "8 st camden", password_digest: "chicken", is_admin: true
u1 = User.create! first_name: "Suraj", last_name: "Sharma", email: "suraj@ga.co", phone: "0478930987", address: "8 st camden", password_digest: "chicken", is_admin: false
u2 = User.create! first_name: "Stanley", last_name: "Chin",email: "steven@ga.co", phone: "043480920", address: "8 st amberville", password_digest: "chicken", is_admin: false
u3 = User.create! first_name: "Frankie", last_name: "Tsoi",email: "franki@ga.co", phone: "047895098", address: "8 st mountanen", password_digest: "chicken", is_admin: false


puts "created #{User.count} users."


print "Creating categories..."
Category.destroy_all
c1 = Category.create! name: "Snack and Sweets"
c2 = Category.create! name: "Drinks"
c3 = Category.create! name: "Health"
c4 = Category.create! name: "Instant Food"
cs = Category.create! name: "Household"
c6 = Category.create! name: "Bakey"
c7 = Category.create! name: "Frozen"
puts "created #{Category.count} catogory."


print "Creating Orders..."
Order.destroy_all

o1 = Order.create! user_id: "u1.id", address: "9 sy ", status: "active"
puts "created #{Order.count} order."

print "Creating products..."
Product.destroy_all

p1 = Product.create! user_id: "u0.id", name: "shazia", price: "$3.99", description: "rice", image: "https://cdn.britannica.com/17/176517-050-6F2B774A/Pile-uncooked-rice-grains-Oryza-sativa.jpg", stock: "available", catogory_id: "23"
p2 = Product.create! user_id: "u1.id", name: "haldiram", price: "$9.98", description: "snacks", image: "https://upload.wikimedia.org/wikipedia/commons/7/71/Haldiram%27s_Logo.svg", stock: "available", catogory_id: "42"
p3 = Product.create! user_id: "u2.id", name: "muthu", price: "$3.45", description: "octome", image: "https://www.printwand.com/blog/media/2012/01/ultimate-guide-to-your-product-launch.jpg", stock: "available", catogory_id: "18"
p4 = Product.create! user_id: "u3.id", name: "pavlo", price: "$8.99", description: "matta", image: "", stock: "available", catogory_id: "12"


puts "created #{Product.count} product."

print "Creating reviews..."
Review.destroy_all 
r1 = Review.create! user_id: "u0", product_id: "p1", comment: "nice product", rating: "4"
r2 = Review.create! user_id: "u1", product_id: "p2", comment: "nice product", rating: "4.5"
r3 = Review.create! user_id: "u2", product_id: "p3", comment: "nice product", rating: "3"
r4 = Review.create! user_id: "u3", product_id: "p4", comment: "nice product", rating: "4.1"

puts "created #{Review.count} review."