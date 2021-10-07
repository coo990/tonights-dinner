Rails.application.routes.draw do
  root "food#index"
  
  resources :food
end
