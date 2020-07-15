Rails.application.routes.draw do
  namespace :api do
    get "/photos" => "photos#index"
    post "/photos" => "photos#create"
    get "/photos/:id" => "photos#show"
    patch "/photos/:id" => "photos#update"
    delete "/photos/:id" => "photos#destroy"
  end
end


