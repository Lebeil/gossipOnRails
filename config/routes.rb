Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'front#gossips'
  get 'gossips/:id', to: 'front#gossip', as: 'gossip'
  get 'team', to: 'front#team'
  get 'contact', to: 'front#contact'
  get 'welcome/:first_name', to: 'front#welcome'
  get 'user/:id', to: 'front#user', as: 'user'
end
