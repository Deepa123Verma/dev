Rails.application.routes.draw do
  
  get 'orders/index'
  get 'orders/show'
  get 'orders/new'
  get 'carts/show'
  root "pages#home"
  resources :shops, only:[:index,:show]

  devise_for :users
  resources :users
  get 'users_delete/:id', to: 'users#delete', as: "delete_users"
  resources :posts

  resources :products
  get 'products_delete/:id', to: 'products#delete', as: "delete_products"
  get 'carts/:id' => "carts#show", as: "cart"
  delete 'carts/:id' => "carts#destroy"
  post 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
  post 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
  post 'line_items' => "line_items#create"
  get 'line_items/:id' => "line_items#show", as: "line_item"
  delete 'line_items/:id' => "line_items#destroy"

  resources :orders
end
