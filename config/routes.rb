Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    # Businesses
    get "/businesses" => "businesses#index"
    post "/businesses" => "businesses#create" #Signup
    get "/businesses/:id" => "businesses#show"
    patch "/businesses/:id" => "businesses#update"
    delete "/businesses/:id" => "businesses#destroy"

    # Businesses Login
    post "/sessions" => "sessions#create"

    # Events
    get "/events" => "events#index"
    post "/events" => "events#create"
    get "/events/:id" => "events#show"
    patch "/events/:id" => "events#update"
    delete "/events/:id" => "events#destroy"

    # Tags
    get "/tags" => "tags#index"
  end

end
