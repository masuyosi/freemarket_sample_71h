Rails.application.routes.draw do
  devise_for :users, controllers:{
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'}

  
  root 'items#index'
  resources :users,only: [:new,:create]
  resources :items, only: [:new, :create, :show, :edit, :update]
  resources :profiles,only: [:new,:create]
    resources :profiles do
      collection do
        get 'logout'
      end
    end
  resources :orders, only: [:new, :create]
end
