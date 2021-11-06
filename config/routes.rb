Rails.application.routes.draw do
  devise_for :users
  root 'septic_tank_levels#index'

  resources :septic_tank_levels
end
