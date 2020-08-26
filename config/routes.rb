Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cuisines, only: [:new, :show, :create]
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create, :show]
  end
end
