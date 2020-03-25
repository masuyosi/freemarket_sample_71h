Rails.application.routes.draw do
  devise_for :users, controllers:{
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root 'items#index'

  resources :users,only: [:new,:create]
  resources :items, exept: [:index]
  resources :profiles,only: [:new,:create]
  resources :orders, only: [:new, :create]
end
