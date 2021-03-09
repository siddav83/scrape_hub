Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: :show
  resources :boroughs
  resources :categories
  resources :companies
  resources :company_categories
  post 'bookmark', to: 'boroughs#bookmark'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
