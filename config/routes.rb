Rails.application.routes.draw do
  devise_for :users
  resource :profile, only: [:show, :update]
  resources :repositories
  root 'home#index'
end
