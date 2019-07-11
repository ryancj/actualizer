Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  root "static#index"

  resources :components
=======
  root "components#index"


  resources :components
  get "/test" => "static#test"
  get '/show' => "static#show"
  get "/example" => "static#index"
  
>>>>>>> 4b10b65baae9c9751a2b5940537c24a32fed7608
end
