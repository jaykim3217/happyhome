Rails.application.routes.draw do
  devise_for :users

  root to: "items#index"
  resources :users, only: [:new]
  resources :items, only: [:index, :new, :create, :show]
  resources :tweets, only: [:index, :new, :create, :show] do
    resources :comments, only: [:create]
  end
end
