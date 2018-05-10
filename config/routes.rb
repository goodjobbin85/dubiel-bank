Rails.application.routes.draw do

  root 'welcome#home'

  get 'users', to: "users#index"
  get 'users/new', to: "users#new", as: "new_user"
  post 'users', to: "users#create"
  get 'users/:id', to: "users#show", as: "user"
  get 'users/:id/edit', to: "users#edit", as: "edit_user"
  patch 'users/:id', to: "photos#update"
  delete 'users/:id', to: "users#destroy"

 
end
