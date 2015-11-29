Rails.application.routes.draw do

  resources :orders
  root to: 'store#index', as: 'store'

  resources :line_items
  resources :carts
  resources :products

end
