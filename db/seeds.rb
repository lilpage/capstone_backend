# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "Lil", email:"lil@example.com", password:"password", admin: true)

Recipe.create!(name:"G&T",ingredients: "['gin','tonic water','simple syrup','lime']" , directions:"mix. drink.")
Recipe.create!(name:"Paloma",ingredients: "['tequila','soda water','grapefruit juice','simple syrup','lime']" , directions:"mix. drink.")
Recipe.create!(name:"Red",ingredients: "['red']" , directions:"mix. drink, mmm colors. good!")
Recipe.create!(name:"Blue",ingredients: "['blue']" , directions:"just drink.")
Recipe.create!(name:"Green",ingredients: "['green']" , directions:"just drink.")
Recipe.create!(name:"White",ingredients: "['red','blue','green']" , directions:"just drink.")

Favorite.create!(user_id:1,recipe_id:1)

Ingredient.create!(name:"lime",category:"yes",in_stock: true)
Ingredient.create!(name:"gin",category:"yes",in_stock: true)
Ingredient.create!(name:"tonic water",category:"yes",in_stock: true)
Ingredient.create!(name:"soda water",category:"yes",in_stock: true)
Ingredient.create!(name:"simple syrup",category:"yes",in_stock: true)
Ingredient.create!(name:"grapefruit juice",category:"yes",in_stock: true)
Ingredient.create!(name:"tequila",category:"yes",in_stock: true)
Ingredient.create!(name:"red",category:"yes",in_stock: true)
Ingredient.create!(name:"blue",category:"yes",in_stock: true)
Ingredient.create!(name:"green",category:"yes",in_stock: true)