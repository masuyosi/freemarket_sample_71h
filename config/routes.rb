Rails.application.routes.draw do
  devise_for :users
  root 'items#index'

  resources :items, only: [:new, :create, :show]
  resources :users,only: [:new, :create]
end
