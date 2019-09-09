Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "products" => "products#index"
    get "products/:id" => "products#show"
    post "products" => "products#create"
    patch "products/:id" => "products#update"
    delete "products/:id" => "products#destroy"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
  end
end




    # get "product_one" => "products#product_one"
    # get "product_two" => "products#product_two"
    # get "product_three" => "products#product_three"
    # get "product_four" => "products#product_four"

    
    # get ":id" => "products#product_query"