
print "Creating users..."

User.destroy_all

u0 = User.create! first_name: "Admin", last_name: "Admin", email: "admin@ga.co", phone: "0478940767", address: "8 st camden", password_digest: "chicken", is_admin: true
u1 = User.create! first_name: "Suraj", last_name: "Sharma", email: "suraj@ga.co", phone: "0478930987", address: "8 st camden", password_digest: "chicken", is_admin: false
u2 = User.create! first_name: "Stanley", last_name: "Chin",email: "steven@ga.co", phone: "043480920", address: "8 st amberville", password_digest: "chicken", is_admin: false
u3 = User.create! first_name: "Frankie", last_name: "Tsoi",email: "franki@ga.co", phone: "047895098", address: "8 st mountanen", password_digest: "chicken", is_admin: false

puts "created #{User.count} users."

####################################################################

print "creating products..."

Product.destroy_all

p1 = Product.create!(
  name: 'Original Sugar Scrub',
  price: 20,
  description: 'Sugar body scrub contains the elements of almond sweet oil, soya bean oil, aloe vera and coconut oil which contains lots of Vitamin E in help with anti- aging and anti wrinkles. The scrub that deeply cleanse your skin as well as moisturizer your skin.',
  stock: 100,
  image: 'IMG_nobg-original.png'
)

p2 = Product.create!(
  name: 'Minty Citrus Sugar Scrub',
  price: 20,
  description: 'Sugar body scrub contains the elements of peppermint oil, soya bean oil, aloe vera and coconut oil which contains lots of Vitamin E in help with anti- aging and anti wrinkles. The scrub that deeply cleanse your skin as well as moisturizer your skin.',
  stock: 100,
  image: 'IMG_nobg-citrus.png'
)

p3 = Product.create!(
  name: 'Vanilla Body Milk',
  price: 23,
  description: 'Hydrate and soothe your skin with our delectably smooth body milk! A light and luscious moisturiser with Jojoba and Avocado Oil to nourish your skin and leave it feeling soft, silky and repaired.',
  stock: 100,
  image: 'IMG_nobg-lotion.png'
)

puts "created #{Product.count} product."