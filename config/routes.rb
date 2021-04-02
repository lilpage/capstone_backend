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
    # Users
    post "/users" => "users#create"
    # Sessions
    post "/sessions" => "sessions#create"
  end
end
