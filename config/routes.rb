Rails.application.routes.draw do
  resources :entities
  resources :groups
  devise_for :users
  root 'main#index'
  resources :users
end
