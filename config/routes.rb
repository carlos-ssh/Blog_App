Rails.application.routes.draw do
  root "welcome#index"
  
  get 'subscribers/subs'
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  
  post 'login', to: 'sessions#create'

  resources :users, only: [:new, :create]
  resources :figures
  resources :images
  resources :subscribers
end
=begin
  get 'figures/index'
  get 'figures/new'
  get 'figures/create'
  get 'figures/edit'
  get 'figures/update'
rescue => exception
  
=end