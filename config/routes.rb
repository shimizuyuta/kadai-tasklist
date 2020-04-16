Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/create'
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  get 'signup', to: 'users#new'
  root to: "tasks#index"
  resources :users, only:[:index,:show,:new,:create]
  resources :tasks
  get 'tasks/new', to: 'tasks#new'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
    # resources :microposts, only: [:create, :destroy]
    
  
end
