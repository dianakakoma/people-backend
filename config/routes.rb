Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/people" => "people#index"
    post "/people" => "people#create"
    get "/people/:id" => "people#show"
    patch "/people/:id" => "people#update"
    delete "/people/:id" => "people#destroy"
  end
end
