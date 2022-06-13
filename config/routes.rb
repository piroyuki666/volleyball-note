Rails.application.routes.draw do
  get 'sessions/new'
  root to: 'trainings#index'
  resources :users, only: [:create]
  get 'login', to: "sessions#new"
  post 'login', to: "sessions#create"
  delete 'logout', to: "sessions#destroy"
end
