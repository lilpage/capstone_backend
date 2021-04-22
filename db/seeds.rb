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
Recipe.create!(name:"G&T", directions: ["mix.", "drink."])
Recipe.create!(name:"Paloma", directions: ["mix.", "drink."])
Recipe.create!(name:"Red", directions: ["just drink."])
Recipe.create!(name:"Blue", directions:["just drink."])
Recipe.create!(name:"Green", directions:["just drink."])
Recipe.create!(name:"White", directions: ["mix.", "drink, mmm colors. good!"])

#Dummy
Favorite.create!(user_id:1,recipe_id:1)

# All available ingredients
Ingredient.create!(name:"lime",category:"yes")
Ingredient.create!(name:"gin",category:"yes")
Ingredient.create!(name:"tonic water",category:"yes")
Ingredient.create!(name:"soda water",category:"yes")
Ingredient.create!(name:"simple syrup",category:"yes")
Ingredient.create!(name:"grapefruit juice",category:"yes")
Ingredient.create!(name:"tequila",category:"yes")
Ingredient.create!(name:"red",category:"yes")
Ingredient.create!(name:"blue",category:"yes")
Ingredient.create!(name:"green",category:"yes")

# Ingredients in Recipes, through associations
# G&T
IngredientList.create!(ingredient_id: 1, recipe_id: 1, amount: "half a ")
IngredientList.create!(ingredient_id: 2, recipe_id: 1, amount: "2 shots of ")
IngredientList.create!(ingredient_id: 3, recipe_id: 1, amount: "like most of a ")
IngredientList.create!(ingredient_id: 5, recipe_id: 1, amount: "half a jib of ")
# Paloma
IngredientList.create!(ingredient_id: 1, recipe_id: 2, amount: "most of a ")
IngredientList.create!(ingredient_id: 7, recipe_id: 2, amount: "2 shots of ")
IngredientList.create!(ingredient_id: 6, recipe_id: 2, amount: "2 shots of ")
IngredientList.create!(ingredient_id: 5, recipe_id: 2, amount: "a jib of ")
IngredientList.create!(ingredient_id: 4, recipe_id: 2, amount: "1 cup of ")
# DUMMY DUMMY DUMMY DUMMY
# Dummy Red
IngredientList.create!(ingredient_id: 8, recipe_id: 3, amount: "a bit of ")
# Dummy Blue
IngredientList.create!(ingredient_id: 9, recipe_id: 4, amount: "a lot of ")
# Dummy Green
IngredientList.create!(ingredient_id: 10, recipe_id: 5, amount: "a ton of ")
# Dummy White
IngredientList.create!(ingredient_id: 8, recipe_id: 6, amount: "one third")
IngredientList.create!(ingredient_id: 9, recipe_id: 6, amount: "one third")
IngredientList.create!(ingredient_id: 10, recipe_id: 6, amount: "one third")

# Tags
Tag.create!(name:"sweet", recipe_id:2)
Tag.create!(name:"dummmy", recipe_id:3)
Tag.create!(name:"dummmy", recipe_id:4)
Tag.create!(name:"dummmy", recipe_id:5)
Tag.create!(name:"dummmy", recipe_id:6)