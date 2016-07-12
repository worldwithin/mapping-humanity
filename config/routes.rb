Rails.application.routes.draw do
  root to: 'pages#homepage'

  resources :people, only: :index
  resources :works, only: :index
end
