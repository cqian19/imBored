Rails.application.routes.draw do

  root to: 'visitors#index'

  resources :groups, only: [:index, :show]
  post "groups", to: "groups#create", as: "create_group"
  patch "group_join", to: "groups#join", as: "join_group"
  delete "group_leave", to: "groups#leave", as: "leave_group"

  devise_for :users
  resources :users

  get '/events', to: 'events#index'
  get '/events/new', to: 'events#new'
  post '/events', to: 'events#create'

end
