Rails.application.routes.draw do
  root "food#index"
  
  get "/food", to: "food#index"
  get "/food/:id", to: "food#show"
end
