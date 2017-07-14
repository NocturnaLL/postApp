Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
  resources :users, only: [:index, :show]
  resources :relationships, only: [:create, :index, :destroy]
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
  resources :categories, only: [:show, :index]
end
