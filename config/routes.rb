Rails.application.routes.draw do
  devise_for :users
  resources :wars
  root to: 'home#index'
end
