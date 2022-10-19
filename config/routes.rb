Rails.application.routes.draw do
  resources :entities
  resources :groups
  devise_for :users
  root "groups#index"
  resources :users
end
