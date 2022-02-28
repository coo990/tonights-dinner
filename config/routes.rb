# frozen_string_literal: true

Rails.application.routes.draw do

  root 'food#index'

  resources :food
  post 'food/new', to: 'food#create'
  post 'food/:id/edit', to: 'food#update'
  get 'food/:id/random', to: 'food#random', as: 'random_food_path'

  resources :users, only: [:new, :create]

  get 'signup', to: 'users#new'

  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  
end
