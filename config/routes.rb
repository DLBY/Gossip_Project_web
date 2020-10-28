Rails.application.routes.draw do


  root 'gossips#index'

  get 'cities/show'

  get 'user/show'

  get '/contact', to: 'static#contact'

  get '/team', to: 'static#team'

  resources :gossips
  resources :users, only:[:show] 
  resources :cities, only:[:show]
  resources :comments
  
end