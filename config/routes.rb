Rails.application.routes.draw do
  devise_for :users, controllers:{
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  root 'items#index'
  resources :users,only: [:new,:create]

  resources :items, except: [:index] do
    resources :comments, only: [:create]

    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
      get 'search'
      get 'brands_index'
      get 'categories_index'
    end
    member do
      get 'brands'
      get 'categories'
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
  end

  resources :profiles,only: [:new, :create]
    resources :profiles do
      collection do
        get 'logout'
      end
    end

  resources :orders, only: [:create, :show]do
    member do
      post 'purchase'
    end
  end
  resources :cards, only: [:new, :show,:destroy] do
    collection do
      post 'pay', to: 'cards#pay'
    end
  end

  post   '/like/:item_id' => 'likes#like',   as: 'like'
  delete '/like/:item_id' => 'likes#unlike', as: 'unlike'
  get   '/likes' => 'likes#index',   as: 'like_index'
end

