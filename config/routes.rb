Rails.application.routes.draw do
  get 'list_books/create'
  get 'list_books/delete'
  get 'lists/show'
  get 'lists/new'
  get 'lists/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
