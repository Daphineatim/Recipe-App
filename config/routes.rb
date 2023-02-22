Rails.application.routes.draw do
  root 'foods#Index'
  devise_for :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :recipes
  resources :users 
  # resources :foods, only: [:new, :edit, :update, :show, :destory]
  
   resources :foods, only: [:index, :new, :create, :show, :destroy]
  
  resources :users, only: [:index, :show]
end
