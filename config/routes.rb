Rails.application.routes.draw do

  root 'events#index'


  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :events, only: [:new, :create, :show, :index]

  get 'signup' => 'users#new', as: 'signup'
  get 'login' => 'sessions#new', as: 'login'
  get 'logout' => 'sessions#destroy', as: 'logout'

end
