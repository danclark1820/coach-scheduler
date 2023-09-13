Rails.application.routes.draw do
  devise_for :controllers
  devise_for :views
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :slots, only: [:index]

  # Defines the root path route ("/")
  root "home#index"
end
