Rails.application.routes.draw do
  root to: 'visitors#index'
  get "groups", to: "groups#index"
  post "groups", to: "groups#create", as: "create_group"
  patch "group_join", to: "groups#join", as: "join_group"
  delete "group_leave", to: "groups#leave", as: "leave_group"

  devise_for :users
  resources :users
end
