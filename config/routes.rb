Rails.application.routes.draw do
  devise_for :accounts 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/browse", to: "browse#browse", as: :browse
  post "/approve/:id", to: "browse#approve", as: :approve_user
  post "/decline/:id", to: "browse#decline", as: :decline_user

  root to: "public#home"
end 
