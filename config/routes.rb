Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'borrows/index'
  get 'borrows/show'
  get 'books/index'
  get 'books/create'
  

  resources :books
  resources :users
  resources :borrows
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
