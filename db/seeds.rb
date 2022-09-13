# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Post.delete_all
puts 'Cleaning DB...'

20.times do
  post = Post.create(
    title: Faker::Movie.title,
    body: Faker::Movie.quote,
    rating: rand(1..5),
    author: ["Jaime", "Albert", "Siri", "Noria"].sample
  )
  puts "Creating new post with id: #{post.id}"
end
puts 'Finished'
