Rails.application.routes.draw do
  root "pages#home"

  devise_for :users
  resources :users

  get '/posts/:id', to: 'posts#show'
  resources :products
end
