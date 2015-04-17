Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :journeys
  resources :countries
  resources :cities
  resources :travel_modes
  root 'home#index'

end

