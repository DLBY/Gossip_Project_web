Rails.application.routes.draw do


  root 'gossips#index'

  get 'user/show'
=begin
  get 'home/gossip'

  get 'home/show_gossip', to: 'home#show_gossip'

  get '/welcome/:first_name', to: 'welcome#first_name'
=end
  get '/contact', to: 'static#contact'

  get '/team', to: 'static#team'

  resources :gossips, only: [:show, :new, :create]  
end