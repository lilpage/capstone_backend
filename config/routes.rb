Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # Recipes
    get "/recipes" => "recipes#index"
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
    get "/ingredientlist" => "ingredientlist#index"
    post "/ingredientlist" => "ingredientlist#create"
    delete "/ingredientlist/:id" => "ingredientlist#destroy"
  end
end
