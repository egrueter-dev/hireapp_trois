Rails.application.routes.draw do
  root 'homes#index'
  post '/', to: 'homes#create'
  devise_for :users

  resources :settings, only: [:index]
  resources :networks, only: [:index, :create]
  resources :hires, only: [:index, :create]
  resources :jobs, only: [:index, :create, :new, :show]
  resources :careers, only: [:index, :show]

  #jobs needs to be updated here..
  #/job/12321/promote must be available..

  resources :dashboards, only: [:index, :create]
  resources :homes, only: [:index, :create]
  resources :upgrades, only: [:index, :create, :new]

  get 'company/home', to: 'dashboards#index'
  get 'company/jobs', to: 'jobs#index'
  get 'settings/networks', to: 'networks#index'
  get 'settings/profile', to: 'profile#index'
end
