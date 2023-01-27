Rails.application.routes.draw do
   devise_for :users
  root to: 'home#top'
  get "home/about" => "home#about", as: "about"
  resources :books, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :editend, :index]
end