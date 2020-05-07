Rails.application.routes.draw do

  # get 'cities/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # '/'
  root 'gossips#index'

  resources :gossips
  # get 'gossips/:id', to: 'front#gossip', as: 'gossip'
  resources :cities, only: [:show]
  resources :users, only: [:show]
  # get 'user/:id', to: 'front#user', as: 'user'
  get 'team', to: 'front#team'
  get 'contact', to: 'front#contact'
  get 'welcome/:first_name', to: 'front#welcome'

end
