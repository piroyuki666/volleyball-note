Rails.application.routes.draw do
  root to: 'trainings#index'
  resources :trainings
  resources :users, only: [:create]
  post 'login', to: "sessions#create"
  delete 'logout', to: "sessions#destroy"

end
