Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "products_url" => "products#products_display"
    get "product_one" => "products#product_one"
    get "product_two" => "products#product_two"
    get "product_three" => "products#product_three"
    get "product_four" => "products#product_four"
  end
end
