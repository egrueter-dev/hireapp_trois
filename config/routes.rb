Rails.application.routes.draw do
  root 'homes#index'
  post '/', to: 'homes#create'

  devise_for :users

  resources :settings, only: [:index]
  resources :networks, only: [:index, :create]

  #This is the job display for the signed in user.

  resources :jobs, only: [:index, :create, :new, :show, :edit] do
    resources :applicants, only: [:show]
  end

  #Displays public job
  #
  resources :careers, only: [:index, :show]


  #Jobs needs to be updated

  #/job/12321/promote must be available..

  resources :dashboards, only: [:index, :create]
  resources :hires, only: [:index, :create, :show]
  resources :homes, only: [:index, :create]
  resources :upgrades, only: [:index, :create, :new]

  match "careers/location/:location" => "careers#location", via: "get"

  get 'company/home', to: 'dashboards#index'
  get 'company/jobs', to: 'jobs#index'
  get 'settings/networks', to: 'networks#index'
  get 'settings/profile', to: 'profile#index'
end
