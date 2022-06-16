Rails.application.routes.draw do
  get 'sessions/new'
  root to: 'trainings#index'
  resources :trainings
  resources :users, only: [:create]
  post 'login', to: "sessions#create"
  delete 'logout', to: "sessions#destroy"
  resources :teams, only: [:create]
  post 'teamlogin', to: "teamsessions#create"
  delete 'teamlogout', to: "teamsessions#destroy"

end
