Rails.application.routes.draw do
  resources :users, only: [:index, :create, :show]

  post '/login',    to: 'sessions#create'
  post '/logout',   to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#show'

  resources :workouts do
    member do
      get 'statistics'
    end
  end

  resources :exercises, except: [:show]

  resources :walkthroughs, only: [:create]
end