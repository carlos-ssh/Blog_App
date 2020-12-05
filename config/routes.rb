Rails.application.routes.draw do
  root "welcome#index"
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create]
  resources :figures
  resources :images
end
=begin
  get 'figures/index'
  get 'figures/new'
  get 'figures/create'
  get 'figures/edit'
  get 'figures/update'
rescue => exception
  
=end