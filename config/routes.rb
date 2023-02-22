Rails.application.routes.draw do
  get 'public_recipes/index'

  resources :foods, only: [:index, :new, :create, :show, :destroy]
  root "foods#index"
  
  resources :users, only: [:index, :show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
