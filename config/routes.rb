Rails.application.routes.draw do

  root 'home#gossip'

  get 'home/gossip'

  get 'home/show_gossip', to: 'home#show_gossip'
  
  get '/welcome/:first_name', to: 'welcome#first_name'

  get '/contact', to: 'static#contact'

  get '/team', to: 'static#team'
end
