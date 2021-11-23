# frozen_string_literal: true

Rails.application.routes.draw do
  root 'food#index'

  resources :food
  post 'food/new', to: 'food#create'
  post 'food/:id/edit', to: 'food#update'
  get 'food/:id/random', to: 'food#random', as: 'random_food_path'
end
