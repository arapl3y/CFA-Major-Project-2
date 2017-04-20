Rails.application.routes.draw do
  devise_for :users

  root 'items#home'

  get '/dashboard', to: 'items#dashboard'


  get '/request_item/new', to: 'item_requests#new'

  put '/request_item/:id', to: 'item_requests#create',
                           as: :request_item

  resources :items

end
