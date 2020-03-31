Rails.application.routes.draw do

  devise_for :users, controllers:{
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root 'items#index'
  resources :users,only: [:new,:create]

  resources :items, except: [:index] do
    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end

    collection do
      get 'brands_index'
    end
    member do
      get 'brands'
    end
    member do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
  end

  resources :profiles,only: [:new,:create]
    resources :profiles do
      collection do
        get 'logout'
      end
    end
  resources :orders, only: [:new, :create]
  resources :cards, only: [:new, :show,:destroy] do
    collection do
      post 'pay', to: 'cards#pay'
    end
  end
end