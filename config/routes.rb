Rails.application.routes.draw do
  resources :units, only: [:index]
  resources :renters, only: [:index]
  resources :owners, only: [:index]
end
