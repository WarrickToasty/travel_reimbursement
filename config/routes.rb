Rails.application.routes.draw do
  resources :trips
  resources :day_tables
  resources :employees
  resources :users
  resources :employees
  resources :users

  match ':controller(/:action(/:id))', :via => :get


    root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
