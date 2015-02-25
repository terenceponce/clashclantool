Rails.application.routes.draw do
  devise_for :users
  resources :wars do
    resources :opponents, only: [:show, :edit, :update]
  end
  resources :clans
  root to: 'home#index'
end
