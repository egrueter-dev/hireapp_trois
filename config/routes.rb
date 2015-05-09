Rails.application.routes.draw do
  root 'homes#index'

  devise_for :users

  resources :settings, only: [:index]
  resources :networks, only: [:index, :create]
  resources :hires, only: [:index, :create]
  resources :jobs, only: [:index, :create]
  resources :dashboards, only: [:index, :create]

  get 'company/home', to: 'dashboards#index'
  get 'company/jobs', to: 'jobs#index'
  get 'settings/networks', to: 'networks#index'
  get 'settings/profile', to: 'profile#index'
end
