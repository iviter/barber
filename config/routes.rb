Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'home', to: 'home#index'
  devise_for :users
  get 'authorized', to: 'sessions#page_requires_login'
  resources :cars
  resource :user_profiles
  resource :advertisements
  root to: 'home#index'
end
