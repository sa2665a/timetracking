# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Project.create!(name:'Ironhack', description: 'Ironhack is a ...')

# Project.create!(name:'Time tracking app')

# Project.create!(name:'Recipes', description: 'Track my favorite recipes')



(1..10).each do |i|
	project= Project.create!(name: "Project number #{i}", description: "This is the description")
	project.time_entries.create(minutes: rand(1..60), hours: rand(0..2))

end

