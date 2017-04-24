Rails.application.routes.draw do

  root 'items#home'

  devise_for :users, controllers: { registrations: 'users/registrations' }

  get '/dashboard', to: 'items#dashboard'

  get '/plans', to: 'items#plans'

  put '/request_item/:id', to: 'item_requests#create',
                           as: :request_item

  resources :items
  # resources :item_requests, only: [:create, :update]
  post 'item_requests', to: 'item_requests#create'
  patch 'update_item_requests', to: 'item_requests#update'
end
