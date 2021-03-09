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
  post 'bookmark', to: 'boroughs#bookmark'
  get 'users/:id/mybookmarks', to: 'users#my_bookmarks', as: 'my_bookmarks'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
