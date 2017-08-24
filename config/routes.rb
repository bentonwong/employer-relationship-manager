Rails.application.routes.draw do
  resources :applications
  resources :jobs, only: [:index, :new, :create, :edit, :update, :show]
  resources :employers, only: [:index, :new, :create, :edit, :update, :show]
  resources :users, only: [:index, :new, :create, :edit, :update, :show]
  resources :sessions, only: [:home, :new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/signin', to: 'sessions#new', as: 'signin'
  get '/signup', to: 'users#new', as: 'signup'
  get '/logout', to: 'sessions#destroy', as: 'logout'

  root "applications#index"

end
