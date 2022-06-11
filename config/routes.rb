Rails.application.routes.draw do
  root to: 'trainings#index'
  resources :users, only: [:create]
  #get '/'
end
