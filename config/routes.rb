Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks"}
  scope "(:locale)", locale: /en|vi/ do
    root to: "static_pages#home"
    get "/help", to: "static_pages#help"
    get "/about", to: "static_pages#about"
    get "/contact", to: "static_pages#contact"

    devise_scope :user do
      resources :users do
        member do
          get :following, :followers
        end
        resources :pets
      end
    end

    resources :conversations, only: [:create] do
      member do
        post :close
      end
      resources :messages, only: [:create]
    end
    resources :relationships, only: [:create, :destroy]
    resources :blogs do
      resources :votes, only: [:create, :destroy]
    end
    resources :comments, only: [:create, :destroy]

    namespace :admin do
      resources :users
    end
  end
end
