# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Admin / non-admin User
User.create!(name: "Lil", email:"lil@example.com", password:"password", admin: true)
User.create!(name: "Ghost", email:"ghost@example.com", password:"password", admin: false)

# All recipes on site
Recipe.create!(name:"Rusty Nail", directions: ["Stir with ice. Strain over large ice cubes in rocks glass. Garish with orange peel."], image: "https://live.staticflickr.com/3672/9627041204_432c21b24d_b.jpg")
Recipe.create!(name:"Rob Roy", directions: ["Stir with ice. Strain into chilled coupe or martini glass. Garnish with lemon twist."], image: "https://live.staticflickr.com/4107/5057781371_5e08dc73f2_b.jpg")
Recipe.create!(name:"Brown Derby", directions: ["Shake with ice. Strain into chilled coupe. Garnish with grapefruit twist. "], image: "https://www.liquor.com/thmb/M38DVkbjriBAlpjs7SSWBnrwOJc=/720x720/filters:fill(auto,1)/__opt__aboutcom__coeus__resources__content_migration__liquor__2019__07__10125357__brown-derby-720x720-recipe-fe73ddc2588c48f180761c39fffd56f7.jpg")
Recipe.create!(name:"Mint Julep", directions: ["Muddle mint and simple syrup. Add rum and lime juice, shake. Double strain over ice in collins glass. Top with club soda. Garnish with lime and mint sprig."], image: "https://upload.wikimedia.org/wikipedia/commons/5/55/Mint_Julep_im_Silberbecher.jpg")
Recipe.create!(name:"Mojito", directions: ["Muddle mint and simple syrup. Add rum and lime juice, shake. Double strain over ice in collins glass. Top with club soda.  Garnish with lime and mint sprig."], image: "https://live.staticflickr.com/4147/5084101811_9f84644414_b.jpg")
Recipe.create!(name:"Mai-Tai", directions: ["Shake all, save dark rum, with ice. Strain over pebble ice. Float dark rum over and garnish with mint sprig."], image: "https://www.liquor.com/thmb/bMJ2wMlf0W1QMnmwhS3k_TjV6pc=/735x0/mai-tai-720x720-primary-e09e24f1cacd4b3896f5aa32ba51dcdd.jpg")
Recipe.create!(name:"Gin & Tonic", directions: ["Stir together over ice. Garnish with lime."], image: "https://cdn.pixabay.com/photo/2019/06/30/02/22/cocktail-4307170_1280.jpg")
Recipe.create!(name:"Pink Lady", directions: ["Add all ingedients to cocktail shaker, egg whites last. Dry shake quickly. Shake with ice. Strain into chilled coupe."], image: "https://live.staticflickr.com/7372/10213146845_239bec0f63_b.jpg")
Recipe.create!(name:"Moscow Mule", directions: ["Shake with ice. Strain over ice cubes in chilled copper mule cup. Garnish with lime."], image: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Moscow_Mule_at_Rye%2C_San_Francisco.jpg/1599px-Moscow_Mule_at_Rye%2C_San_Francisco.jpg")
Recipe.create!(name:"Pimm's Cup", directions: ["muddle 2 cucumber slices and simple syrup. Fill collins glass with ice, sliced strawberry, and remaining cucumber slices. Add pimm's and lemon juice, shake with ice. Strain over collins glass. Top with ginger ale. Garnish with mint sprig."], image: "https://www.saveur.com/app/uploads/2019/01/25/AFGGQMOFTX3IGLUAHID6NBCD7E.jpg?width=785")

#Dummy
Favorite.create!(user_id:1,recipe_id:1)

# All available ingredients
#Bases 
# 1 - 7
Ingredient.create!(name:"blended scotch",category:"base")
Ingredient.create!(name:"bourbon",category:"base")
Ingredient.create!(name:"rum",category:"base")
Ingredient.create!(name:"gin",category:"base")
Ingredient.create!(name:"vodka",category:"base")
Ingredient.create!(name: "white rum",category:"base")
Ingredient.create!(name: "dark rum",category:"base")
# Mixer (catch-all) 8-18
Ingredient.create!(name:"Pimm's No. 1",category:"mixer")
Ingredient.create!(name:"orange curacao",category:"mixer")
Ingredient.create!(name:"club soda",category:"mixer")
Ingredient.create!(name:"tonic water",category:"mixer")
Ingredient.create!(name:"ginger beer",category:"mixer")
Ingredient.create!(name:"ginger ale",category:"mixer")
Ingredient.create!(name:"applejack",category:"mixer")
Ingredient.create!(name:"Drambuie",category:"mixer")
Ingredient.create!(name:"vermouth",category:"mixer")
Ingredient.create!(name:"Angostura orange bitters",category:"mixer")
Ingredient.create!(name:"orgeat",category:"mixer")
# Sweet 19-21
Ingredient.create!(name:"simple syrup",category:"sweet")
Ingredient.create!(name:"honey syrup",category:"sweet")
Ingredient.create!(name:"grandine",category:"sweet")
# Fresh Ingredients 22-28
Ingredient.create!(name:"egg white",category:"fresh")
Ingredient.create!(name:"fresh strawberry",category:"fresh")
Ingredient.create!(name:"cucumber slices",category:"fresh")
Ingredient.create!(name:"grapefruit juice",category:"fresh")
Ingredient.create!(name:"lime juice",category:"fresh")
Ingredient.create!(name:"lemon juice",category:"fresh")
Ingredient.create!(name:"mint leaves",category:"fresh")
# Garnishes 29-33
Ingredient.create!(name:"mint sprig",category:"garnish")
Ingredient.create!(name:"lemon peel",category:"garnish")
Ingredient.create!(name:"grapefruit peel",category:"garnish")
Ingredient.create!(name:"orange peel",category:"garnish")
Ingredient.create!(name:"fresh lime slices",category:"garnish")

# Ingredients in Recipes, through associations
# Rusty Nail
IngredientList.create!(ingredient_id: 1, recipe_id: 1, amount: "2oz")
#Rob Roy
IngredientList.create!(ingredient_id: 1, recipe_id: 2, amount: "2.5oz")
#Brown Derby
IngredientList.create!(ingredient_id: 2, recipe_id: 3, amount: "2oz")
#Mint Julep
IngredientList.create!(ingredient_id: 2, recipe_id: 4, amount: "2.5oz")
#Mojito
IngredientList.create!(ingredient_id: 3, recipe_id: 5, amount: "2oz")
#Mai-Tai
IngredientList.create!(ingredient_id: 6, recipe_id: 6, amount: "1oz")
IngredientList.create!(ingredient_id: 7, recipe_id: 6, amount: "1oz")
#Gin & Tonic
IngredientList.create!(ingredient_id: 4, recipe_id: 7, amount: "2oz")
#Pink Lady
IngredientList.create!(ingredient_id: 4, recipe_id: 8, amount: "1.5oz")
#Moscow Mule
IngredientList.create!(ingredient_id: 5, recipe_id: 9, amount: "1.5oz")
#Pimm's Cup
IngredientList.create!(ingredient_id: 8, recipe_id: 10, amount: "2oz")


# Tags
Tag.create!(name:"simple", recipe_id:7)
Tag.create!(name:"other", recipe_id:10)

#Fridge
Fridge.create(ingredient_id:1, user_id: 1, in_stock:true)
Fridge.create(ingredient_id:2, user_id: 1, in_stock:true)
Fridge.create(ingredient_id:3, user_id: 1, in_stock:false)
Fridge.create(ingredient_id:1, user_id: 2, in_stock:true)
Fridge.create(ingredient_id:2, user_id: 2, in_stock:false)