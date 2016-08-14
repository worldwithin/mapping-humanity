Rails.application.routes.draw do
  devise_for :admin_users, path: 'admin', controllers: { sessions: 'admin/sessions' }

  devise_for :users, path: '', path_names: { sign_in: 'login',
                                             sign_up: 'register',
                                             edit: 'profile',
                                             sign_out: 'exit' }

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
