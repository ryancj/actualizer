Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "static#index"

  resources :components
  get "/test" => "static#test"
  get '/show' => "static#show"
  
end
