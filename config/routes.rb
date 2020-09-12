Rails.application.routes.draw do


  # post '/users/login', to: 'users#login'
  resources :users do
    resources :posts, only: [:index, :create]
    # resources :comments
  end
  # resources :posts, only: [:index, :show, :update, :destroy]
  #  - OR -
  resources :posts, except: [:create]
  # resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
