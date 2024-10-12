Rails.application.routes.draw do
  get "comments/create"
  get "posts/index"
  get "posts/show"
  root to: "posts#index"
  
  devise_for :users
  resources :posts do
    resources :comments, only: [:create, :edit, :update, :destroy]
  end
end
