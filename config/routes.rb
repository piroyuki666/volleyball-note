Rails.application.routes.draw do
  root to: 'users#index'
  resources :trainings
  resources :users, only: [:index, :create]
  post 'login', to: "sessions#create"
  delete 'logout', to: "sessions#destroy"

end
