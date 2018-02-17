Rails.application.routes.draw do
  resources :owners
  get 'owners/new/:number', to: 'owners#new', as: 'new_owner_number'

  # resources :events

  get '/events', to: 'events#index'
  post '/events', to: 'events#create'  
  get '/events/new', to: 'events#new', as: 'new_event'
  get '/events/:id/edit', to: 'events#edit', as: 'edit_event'
  get '/events/:id', to: 'events#show', as: 'event'
  patch '/events/:id', to: 'events#update'
  delete '/events/:id', to: 'events#destroy'

  root 'owners#index'
end
