Rails.application.routes.draw do
  devise_for :users
  root 'items#index'

  resources :items, only: [:new,:create, :show]
  resources :profiles,only: [:new,:create]
end
