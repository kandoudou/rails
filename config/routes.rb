Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  
  resources :microposts
  resources :users
  resources :articles

  resources :articles do
  resources :comments
end
end
