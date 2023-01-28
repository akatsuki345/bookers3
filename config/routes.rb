Rails.application.routes.draw do
  post 'books' => 'books#create'
  get 'books/create'
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  get 'books/destroy'
  get 'books/update'
  root to: "homes#top"
  devise_for :users

  resources :books
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/homes/about" => "homes#about", as: "about"
end
