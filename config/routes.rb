Rails.application.routes.draw do


  root 'gossips#index'

  get '/contact', to: 'static#contact'

  get '/team', to: 'static#team'

  resources :gossips
  resources :users
  resources :cities, only:[:show]
  resources :comments
  resources :sessions, only: [:new, :create, :destroy]
  
end