Rails.application.routes.draw do


  root 'gossips#index'

  get 'user/show'

  get '/contact', to: 'static#contact'

  get '/team', to: 'static#team'

  resources :gossips, only: [:show, :new, :create]  
end