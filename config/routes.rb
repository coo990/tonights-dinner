# frozen_string_literal: true

Rails.application.routes.draw do
  root 'food#index'

  resources :food
  post 'food/new', to: 'food#create'
  post 'food/:id/edit', to: 'food#update'
  get 'food/:id/random', to: 'food#random', as: 'random_food_path'

  resources :users, only: [:new, :create, :index, :show]
  
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destory'

end
