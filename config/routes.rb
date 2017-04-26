Rails.application.routes.draw do


  resources :purchases
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get   '/profile/edit', to: 'employees#edit'
  get   '/trips/current', to: 'trips#current'
  get   'home', to: 'static_pages#home'
  get   'profile', to: 'employees#show'
  get   'profile/edit', to: 'employees#edit'
  get   'trips/past', to: 'employees#past'
  get   '/logout', to: 'application#logout'
  resources :users, path: '/signup', as: :users, only: [:create]

  resources :purchases
  resources :trips
  resources :employees
  resources :users



  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
