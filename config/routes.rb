Rails.application.routes.draw do
  root 'restaurants#index'

  resources :restaurants, only: [:new, :index, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
end
