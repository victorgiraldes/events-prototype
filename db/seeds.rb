# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  2.times do
    User.create name: Faker::Name.name, email: Faker::Internet.email, password: "123456", password_confirmation: "123456"
  end

  3.times do
    Event.create name: Faker::StrangerThings.quote, description: "A Great Event", lat: "-20.7966869", lng: "-51.6949129"
  end
