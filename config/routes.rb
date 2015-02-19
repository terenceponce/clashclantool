Rails.application.routes.draw do
  devise_for :users
  resources :wars
  resources :clans
  root to: 'home#index'
end
