Rails.application.routes.draw do

  root 'users#new'


  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :events, only: [:new, :create, :show, :index]

  get 'signup' => 'users#new', as: 'signup'
  get 'login' => 'sessions#new', as: 'login'
  get 'logout' => 'sessions#destroy', as: 'logout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
