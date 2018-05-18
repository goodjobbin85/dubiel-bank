Rails.application.routes.draw do

  get 'sessions/new'

  root 'welcome#home'

  get 'users', to: "users#index"
  get 'users/new', to: "users#new", as: "new_user"
  post 'users', to: "users#create"
  get 'users/:id', to: "users#show", as: "user"
  get 'users/:id/edit', to: "users#edit", as: "edit_user"
  patch 'users/:id', to: "users#update"
  delete 'users/:id', to: "users#destroy"

  get 'signup', to: "users#new", as: "signup"
  get 'login', to: "sessions#new", as: "login"
  get 'logout', to: "sessions#destroy", as: "logout"
  delete 'logout', to: "sessions#destroy"
  post 'login', to: "sessions#create"

 
end
