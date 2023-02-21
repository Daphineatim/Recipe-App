Rails.application.routes.draw do
  get 'users/index'
  get 'foods/index'
  get 'foods/new'
  get 'foods/edit'
  get 'foods/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
