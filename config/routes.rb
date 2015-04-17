Rails.application.routes.draw do
  devise_for :authentications
  resources :users
  resources :journeys
  resources :countries
  resources :cities
  resources :travel_modes
  root 'home#index'

end

