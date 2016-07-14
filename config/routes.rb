Rails.application.routes.draw do
  devise_for :admin_users, path: 'admin', controllers: { sessions: 'admin/sessions' }

  namespace :admin do
    root to: 'admin#dashboard'
    resources :works
    resources :people
    resources :categories
  end

  root to: 'pages#homepage'

  resources :people, only: :index
  resources :works, only: [:index, :show]

  get 'style', to: 'pages#style', as: :style
end
