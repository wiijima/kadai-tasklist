Rails.application.routes.draw do
  root to: 'toppages#index'

  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  delete 'logout', to: 'session#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :new, :create]

  resources :tasks, only: [:show, :create, :edit, :update, :destroy]
end
