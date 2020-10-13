Rails.application.routes.draw do
 
  root "welcome#index"
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #Users
  resources :users, only:[:new, :create]

  #Articles
  resources :articles do
    resources :comments
  end
end
