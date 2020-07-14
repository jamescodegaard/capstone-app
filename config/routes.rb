Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    # Business Routes
    get "/businesses" => "businesses#index"
    post "/businesses" => "businesses#create" #Signup
    get "/businesses/:id" => "businesses#show"
    patch "/businesses/:id" => "businesses#update"
    delete "/businesses/:id" => "businesses#destroy"

    # Login Routes
    post "/sessions" => "sessions#create"
  end

end
