Rails.application.routes.draw do
  devise_for :users
  resources :assigments
  resources :pizzas
  resources :menus
  resources :pizzahouses
  root 'pages#home'
  get 'pages/login'
end
