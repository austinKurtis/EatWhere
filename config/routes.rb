Rails.application.routes.draw do
  get 'user_sessions/new'
  get 'user_sessions/create'
  get 'user_sessions/destroy'
  get 'events/user', to: 'events#user'
  root :to => 'home#index'
  resources :user_sessions
  resources :users
  resources :restaurants
  resources :events, shallow: true do
    resources :eventmembers
    resources :restmembers
  end

  
  resources :home

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
end
