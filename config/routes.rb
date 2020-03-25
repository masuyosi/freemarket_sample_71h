Rails.application.routes.draw do
  devise_for :users, controllers:{
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root 'items#index'

  resources :items, only: [:new,:create, :show]
  resources :users,only: [:new,:create]
end
