Rails.application.routes.draw do

  resources :orders
  resources :comments
  root :to => 'index#index'
  resources :prints
  resources :users
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end
