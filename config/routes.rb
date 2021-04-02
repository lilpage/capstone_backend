Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # Recipes
    get "/recipes" => "recipes#index"
    post "/recipes" => "recipes#create"
    get "/recipes" => "recipes#show"
    patch "/recipes" => "recipes#update"
    delete "/recipes" => "recipes#destroy"
  end
end
