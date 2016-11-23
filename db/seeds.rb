# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts "Gerando as entregas(newspapers)....."
  100.times do |i|
    Newspaper.create!(
      name: Faker::Name.name,
      address: Faker::Address.street_address,
      amount: Faker::Number.between(1, 100),
      description: LeroleroGenerator.sentence([1,2,3,4,5].sample)
    )
  end
puts "Processando......[ok!]"
