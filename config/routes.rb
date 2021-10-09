Rails.application.routes.draw do
  root "food#index"
  
  resources :food
  post "food/new", to: "food#create"
  post "food/:id/edit", to: "food#update"
end
