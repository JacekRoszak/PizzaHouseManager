Rails.application.routes.draw do
  devise_for :users
  resources :assigments, except: %i[edit show update]
  resources :pizzas, except: %i[show]
  resources :menus, except: %i[show]
  resources :pizzahouses, except: %i[index]
  root 'pages#home'
  get 'pages/login'
end
