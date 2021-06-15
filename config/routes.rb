Rails.application.routes.draw do
  devise_for :users
  resources :books, only: [:index]
  resources :list, only: [:show]
  resources :book_list, only: [:create, :delete]
  root to: 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
