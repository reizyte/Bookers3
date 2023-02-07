Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  get "about" => "homes#about"
  resources :users, only:[:show, :index, :edit, :update]
  resources :books, only:[:show, :index, :edit, :update, :create, :destroy]
end
