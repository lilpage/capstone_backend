# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Dummy admin
User.create!(name: "Lil", email:"lil@example.com", password:"password", admin: true)

# All recipes on site
Recipe.create!(name:"G&T", directions:"mix. drink.")
Recipe.create!(name:"Paloma", directions:"mix. drink.")
Recipe.create!(name:"Red", directions:"mix. drink, mmm colors. good!")
Recipe.create!(name:"Blue", directions:"just drink.")
Recipe.create!(name:"Green", directions:"just drink.")
Recipe.create!(name:"White", directions:"just drink.")

#Dummy
Favorite.create!(user_id:1,recipe_id:1)

# All available ingredients
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

# Ingredients in Recipes, through associations
# G&T
IngredientList.create!(ingredient_id: 1, recipe_id: 1)
IngredientList.create!(ingredient_id: 2, recipe_id: 1)
IngredientList.create!(ingredient_id: 3, recipe_id: 1)
IngredientList.create!(ingredient_id: 5, recipe_id: 1)
# Paloma
IngredientList.create!(ingredient_id: 1, recipe_id: 2)
IngredientList.create!(ingredient_id: 7, recipe_id: 2)
IngredientList.create!(ingredient_id: 6, recipe_id: 2)
IngredientList.create!(ingredient_id: 5, recipe_id: 2)
IngredientList.create!(ingredient_id: 4, recipe_id: 2)
# Dummy Red
IngredientList.create!(ingredient_id: 8, recipe_id: 3)
# Dummy Blue
IngredientList.create!(ingredient_id: 9, recipe_id: 4)
# Dummy Green
IngredientList.create!(ingredient_id: 10, recipe_id: 5)
# Dummy White
IngredientList.create!(ingredient_id: 8, recipe_id: 6)
IngredientList.create!(ingredient_id: 9, recipe_id: 6)
IngredientList.create!(ingredient_id: 10, recipe_id: 6)