Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  resources :orders
  resources :pizzas, only: [:index]
  resources :recipes
  resources :ingredients
  resources :crusts

  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  root to: 'pizzas#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
