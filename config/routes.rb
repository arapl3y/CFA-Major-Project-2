Rails.application.routes.draw do
  devise_for :users

  root 'items#home'

  get '/dashboard', to: 'items#dashboard'

  resources :items

end
