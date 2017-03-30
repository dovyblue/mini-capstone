


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
c1 = Image.new(url: "http://image.priceprice.k-img.com/ph/images/article/1934/image-2b.jpg", car_id: 42)
c1.save

c2 = Image.new(url: "http://image.priceprice.k-img.com/ph/images/article/1934/image-3b.jpg", car_id: 42)
c2.save

c3 = Image.new(url: "http://pictures.dealer.com/g/gohonda104th/0158/6e4c2c90c1527dfb345bd17f33151cf4x.jpg", car_id: 42)
c3.save
