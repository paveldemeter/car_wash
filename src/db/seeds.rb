# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Payment.destroy_all
Car.destroy_all
User.destroy_all

user = User.create(first_name: 'Pavel', last_name: 'Demeter', email: 'foo@bar.com', password: 'password', password_confirmation: 'password')
user1 = User.create(first_name: 'Nic', last_name: 'Jensen', email: 'bar@foo.com', password: 'password', password_confirmation: 'password')

car = user.cars.create(model: 'asd', make: 'asd', rego: 'asd')
user.cars.create([
    {model: 'abc', make: 'cba', rego: 'cab'}
])

Role.create(name: 'washer')

car.build_payment(cleaner: user1, price: 10.00)
car.save
