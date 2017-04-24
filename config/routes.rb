Rails.application.routes.draw do
  resources :comments
  resources :prints
  resources :users
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end
