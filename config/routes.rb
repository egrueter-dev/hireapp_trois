Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  scope "settings" do
    resources :networks, only: [:index, :create]
  end
end
