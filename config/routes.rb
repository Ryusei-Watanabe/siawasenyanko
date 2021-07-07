Rails.application.routes.draw do
  root to: 'top#index'
  get 'top/index'
  resources :cats
  devise_for :users
end
