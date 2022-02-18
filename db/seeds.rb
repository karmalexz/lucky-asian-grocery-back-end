


print "Creating users..."
User.destroy_all


u0 = User.create! first_name: "Admin", last_name: "Admin", email: "admin@ga.co", phone: "0478940767", address: "8 st camden", password_digest: "chicken", is_admin: true
u1 = User.create! first_name: "Suraj", last_name: "Sharma", email: "suraj@ga.co", phone: "0478930987", address: "8 st camden", password_digest: "chicken", is_admin: false
u2 = User.create! first_name: "Stanley", last_name: "Chin",email: "steven@ga.co", phone: "043480920", address: "8 st amberville", password_digest: "chicken", is_admin: false
u3 = User.create! first_name: "Frankie", last_name: "Tsoi",email: "franki@ga.co", phone: "047895098", address: "8 st mountanen", password_digest: "chicken", is_admin: false


puts "created #{User.count} users."