Rails.application.routes.draw do
  root 'homes#index'

  devise_for :users

  resources :settings, only: [:index]
  resources :networks, only: [:index, :create]

  get 'settings/networks', to: 'networks#index'
  get 'settings/profile', to: 'profile#index'
end
