Rails.application.routes.draw do

  devise_for :users, controllers:{
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
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
  resources :cards, only: [:new, :show,:create] do
    collection do
      post 'delete', to: 'cards#delete'
    end
  end

end
