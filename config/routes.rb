Rails.application.routes.draw do
  resources :owners

  get 'owners/new/:number', to: 'owners#new', as: 'new_owner_number'

  root 'owners#index'
end
