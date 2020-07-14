Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    # Business Routes
    get "/businesses" => "businesses#index"
    post "/businesses" => "businesses#create" #Signup

    # Login Routes
    post "/sessions" => "sessions#create"
  end

end
