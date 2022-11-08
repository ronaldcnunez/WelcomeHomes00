Rails.application.routes.draw do
  root 'static_pages#home'
  get 'admins/new'
  get 'users/new'
  get '/help'  => 'static_pages#help'
  get '/about'  => 'static_pages#about'
  get '/signup', to: 'users#new'
  get '/admin/new', to: 'admins#new'

  resources :users
  resources :admins

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
