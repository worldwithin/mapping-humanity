Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :admin_users
  root to: 'pages#homepage'

  resources :people, only: :index
  resources :works, only: :index
=======

  get 'style', to: 'pages#style', as: :style
>>>>>>> Creates style page
end
