# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

u1 = User.create :name => "Priyanka", :email_id => "priyanka@ga.co" ,:password => "chicken", :password_confirmation => "chicken"
u2 = User.create :name => "Alicia " , :email_id => "alicia@ga.co", :password => "chicken", :password_confirmation => "chicken"
u3 = User.create :name => "Kresty", :email_id => "kresty@ga.co" ,:password => "chicken", :password_confirmation => "chicken"
u3 = User.create :name => "Admin", :email_id => "admin@ga.co" ,:password => "chicken", :password_confirmation => "chicken",:admin => true
p "User count: #{User.all.count}"
p u1

Order.destroy_all

o1 = Order.create :name => "Priyanka" ,:status => "new",:quantity => 1
o2 = Order.create :name => "Alicia " , :status => "complete",:quantity => 2
o3 = Order.create :name => "Kresty", :status => "cancel",:quantity => 3
p "Order count: #{Order.all.count}"
p o1

u1.orders << o1
u2.orders << o2
u3.orders << o3

Menu.destroy_all

m1 = Menu.create :name => "Latte", :price => 3
m2 = Menu.create :name => "Cappuccino", :price => 4
m3 = Menu.create :name => "Espresso", :price => 4
m4 = Menu.create :name => "Vieena", :price => 4
m5 = Menu.create :name => "Mocha", :price => 4

o1.menus << m1
o2.menus << m2
o3.menus << m3
