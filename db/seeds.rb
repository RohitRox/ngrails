# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts "Creating seed posts ..."
5.times do
  Post.create(title: Faker::Lorem.sentence.capitalize, content: Faker::Lorem.paragraph)
end
puts "5 new posts created."