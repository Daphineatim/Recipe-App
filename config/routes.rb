
Rails.application.routes.draw do  
  # root 'home#Index'
  # resources :recipe_foods
  root 'foods#index
  
Rails.application.routes.draw do
  get 'shopping_lists/index'
  resources :recipe_foods
  root 'foods#Index'

  devise_for :users
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users 
  # resources :foods, only: [:new, :edit, :update, :show, :destory]
  
  resources :foods, only: [:index, :new, :create, :destroy]
  resources :recipes do
    resources :recipe_foods
  end

  resources :public_recipes, only: [:index]
  resources :shoppings, only: [:index]
  
  resources :foods, only: [:index, :new, :create, :show, :destroy]
  resources :public_recipes, only: [:index]
  
  resources :users, only: [:index, :show]

  resources :recipes, only: [:index, :new, :create, :show, :destroy] do
    resources :recipe_foods, only: [:new, :create, :destroy, :update, :edit]
    resources :shopping_lists, only: [:index]
  end
end
