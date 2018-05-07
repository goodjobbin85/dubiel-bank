Rails.application.routes.draw do
  get 'users', to: "users#index"

  get 'users/:id', to: "users#show", as: "user"

  get 'users/create'

  get 'users/update'

  get 'users/destroy'

 root 'welcome#home'
end
