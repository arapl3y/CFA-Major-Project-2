Rails.application.routes.draw do
  devise_for :users

  root 'items#home'

  get '/dashboard', to: 'items#dashboard'

  put '/request_item/:id', to: 'item_requests#create',
                           as: :request_item

  resources :items
  resources :item_requests, only: [:create, :update]

end
