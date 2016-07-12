Rails.application.routes.draw do
  devise_for :admin_users
  root to: 'pages#homepage'

  resources :people, only: :index
  resources :works, only: :index

  get 'style', to: 'pages#style', as: :style
end
