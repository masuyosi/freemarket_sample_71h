Rails.application.routes.draw do
  devise_for :users
  root 'items#index'

  resources :items, exept: [:index]
  resources :profiles,only: [:new,:create]
    resources :profiles do
      collection do
        get 'logout'
      end
    end
  resources :orders, only: [:new, :create]

end
