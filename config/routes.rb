Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  resources :axies #index, show, new, edit, create, update, destroy

  resources :cards

  resources :wallets

  resources :lands

end

