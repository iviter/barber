Rails.application.routes.draw do
  get '/home', to: 'home#index'
  devise_for :users
  
  resources :cars
  root to: 'home#index'
end
