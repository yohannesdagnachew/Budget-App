Rails.application.routes.draw do
  devise_for :users
  root 'main#index'
  resources :users
end
