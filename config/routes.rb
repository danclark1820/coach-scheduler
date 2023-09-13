Rails.application.routes.draw do
  # devise_for :controllers
  # devise_for :views
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :slots, only: [:index, :update, :create]
  resources :users, only: [:show]
  # Defines the root path route ("/")
  root "home#index"
end
