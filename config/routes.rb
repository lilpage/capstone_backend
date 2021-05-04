Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # Recipes
    get "/recipes" => "recipes#index"
    get "/recipes/array" => "recipes#array"
    post "/recipes" => "recipes#create"
    get "/recipes/:id" => "recipes#show"
    patch "/recipes/:id" => "recipes#update"
    delete "/recipes/:id" => "recipes#destroy"
    # Favorites
    get "/favorites" => "favorites#index"
    post "/favorites" => "favorites#create"
    delete "/favorites/:id" => "favorites#destroy"
    # Users
    get "/users" => "users#show"
    post "/users" => "users#create"
    delete "/users/:id" => "users#destroy"
    # Sessions
    post "/sessions" => "sessions#create"
    # Ingredients
    get "/ingredients" => "ingredients#index"
    get "/ingredients/:id" => "ingredients#show"
    # IngredientList
    get "/ingredientlists" => "ingredient_lists#index"
    post "/ingredientlists" => "ingredient_lists#create"
    delete "/ingredientlists/:id" => "ingredient_lists#destroy"
    # Tags
    get "/tags" => "tags#index"
    # Fridges
    get "/fridges" => "fridges#index"
    get "fridges/array" => "fridges#array"
    get "/fridges/:id" => "fridges#index"
    post "/fridges" => "fridges#create"
    patch "/fridges/:id" => "fridges#update"
    delete "/fridges/:id" => "fridges#destroy"
  end
end
