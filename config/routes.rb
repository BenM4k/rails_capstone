Rails.application.routes.draw do
  resources :categories do
    resources :expenses
  end
  devise_for :users
  resources :users
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
