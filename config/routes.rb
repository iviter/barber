Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/login'
  get 'sessions/welcome'
  get 'users/new'
  get 'users/create'
  get '/home', to: 'home#index'
  devise_for :users
  
  resources :cars
  root to: 'home#index'
end
