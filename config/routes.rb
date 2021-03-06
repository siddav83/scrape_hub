Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/blog', to: 'pages#blog'

  resources :users, only: :show
  resources :boroughs
  resources :categories
  resources :companies
  resources :company_categories
  get '/404', to: "errors#not_found"
  get '/422', to: "errors#unacceptable"
  get '/500', to: "errors#internal_error"
  post 'bookmark', to: 'boroughs#bookmark'
  get 'users/:id/mybookmarks', to: 'users#my_bookmarks', as: 'my_bookmarks'
  delete "bookmarks/:id", to: 'users#delete_bookmark', as: 'delete_bookmark'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
