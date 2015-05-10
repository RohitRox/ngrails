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

puts "Creating seed problem and answers ..."
5.times do
  problem = Problem.create(title: Faker::Lorem.sentence.capitalize, content: Faker::Lorem.paragraph)
  rand(2..6).times do
    problem.answers.create(content: Faker::Lorem.paragraph, votes: rand(2..8))
  end
end
puts "5 new problems with answers."