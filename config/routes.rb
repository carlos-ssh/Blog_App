Rails.application.routes.draw do
  get 'post/index'
  get 'welcome/index'
  root :to => "welcome#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #Users
  resources :users, only:[:new, :create]

  #Articles
  resources :articles do
    resources :comments
  end
end