# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




BodyType.delete_all

b1 = BodyType.create! description: 'Sexy'
b2 = BodyType.create! description: 'Mediocore'
b3 = BodyType.create! description: 'Ugly'

EngineType.delete_all

e1 = EngineType.create! description: 'Fuel Injection', fuel: 'Petrol'
e2 = EngineType.create! description: 'V-Tech', fuel: 'Petrol'
e3 = EngineType.create! description: 'Hybrid', fuel: 'Electric'

Car.delete_all

Car.create!({:name => 'Shelby', :image => 'shelby.jpg', :price => 60000, :mph => 150.00, :mpg => 35.45, :car_type => 'Ford', :body_type_id => b1.id, :engine_type_id => e1.id})
Car.create!({:name => 'Mustang', :image => 'mustang.jpg', :price => 90000, :mph => 170.00, :mpg => 25.99, :car_type => 'Ford', :body_type_id => b2.id, :engine_type_id => e2.id})
Car.create!({:name => 'Mondeo', :image => 'mondeo.jpg', :price => 20000, :mph => 120.10, :mpg => 40.99, :car_type => 'Ford', :body_type_id => b3.id, :engine_type_id => b3.id})