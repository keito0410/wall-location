Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get "/about" => "home#about"
  resources :posts, only: [:new, :create, :index, :show]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
