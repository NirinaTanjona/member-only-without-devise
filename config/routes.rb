Rails.application.routes.draw do

  resources :posts, only: [:index, :new, :create]

  get "sign-up", to: "registrations#new"
  post "sign-up", to: "registrations#create"
  delete "logout", to: "sessions#destroy"
  get "sign-in", to: "sessions#new"
  post "sign-in", to: "sessions#create"

  root to: "posts#index"
end
