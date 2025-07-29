Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Creates all CRUD routes:
  resources :products do
    resources :subscribers, only: [ :create ]
  end

  # Defines the root path route ("/")
  root "products#index"
end
