Rails.application.routes.draw do


  get 'cities/show'
  root 'gossips#index'

  get 'user/show'

  get '/contact', to: 'static#contact'

  get '/team', to: 'static#team'

  resources :gossips, only: [:show, :new, :create, :edit]  
  resources :users, only:[:show] 
  resources :cities, only:[:show]
  
end