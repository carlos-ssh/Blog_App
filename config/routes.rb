Rails.application.routes.draw do

  get 'figures/index'
  get 'figures/new'
  get 'figures/create'
  get 'figures/edit'
  get 'figures/update'
  root "welcome#index"
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  #Users
  resource :users, only:[:new, :create]

  #Articles
  resource :articles
end
