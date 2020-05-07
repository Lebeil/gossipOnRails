Rails.application.routes.draw do

  # get 'users/new'
  # get 'users/create'
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'

  # get 'cities/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # '/'
  root 'sessions#new'

  resources :sessions
  resources :gossips
  # get 'gossips/:id', to: 'front#gossip', as: 'gossip'
  resources :cities, only: [:show]
  resources :users, only: [:show, :new, :create]
  # get 'user/:id', to: 'front#user', as: 'user'
  get 'team', to: 'front#team'
  get 'contact', to: 'front#contact'
  get 'welcome/:first_name', to: 'front#welcome'

end
