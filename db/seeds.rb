# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
List.destroy_all

Ingredients = [
  ["Apples"],
  ["Flour"],
  ["Sugar"],
  ["Salt"],
]

Lists = [
  ["List1", Date.new(2018, 3, 4)],
  ["List2", Date.new(2018, 4, 15)]
]

Ingredients.each do |ingredient|
  new_ingredient = Ingredient.create!(name: ingredient.first)
  puts "Created new ingredient"
end

Lists.each do |list|
  new_list = List.create!(name: list.first, date: list.last)
  puts "Created #{new_list.name}"
end

List.all.each do |list|
  3.times do
    random_id = rand(Ingredient.first.id..Ingredient.last.id)
    list.ingredients << Ingredient.find(random_id)
  end
end
