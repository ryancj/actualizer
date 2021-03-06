Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "components#index"


  resources :components
  resources :previews, only: [:index] 
  resources :images
  get "/test" => "static#test"
  get '/show' => "static#show"
  get "/example" => "static#index"
  
end
