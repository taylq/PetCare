Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks", sessions: "sessions"}
  scope "(:locale)", locale: /en|vi/ do
    root to: "static_pages#home"
    get "/help", to: "static_pages#help"
    get "/about", to: "static_pages#about"
    get "/contact", to: "static_pages#contact"
    mount ActionCable.server => '/cable'

    devise_scope :user do
      resources :users do
        member do
          get :following, :followers
        end
        resources :pets do
          resources :medical_records do
            resources :bills
          end
        end
      end
    end

    resources :conversations, only: [:create] do
      member do
        post :close
      end
      resources :messages, only: [:create]
    end

    resources :deseases
    resources :doctors
    resources :relationships, only: [:create, :destroy]
    get "search(/:search)", to: "searches#index", as: :search
    resources :blogs do
      resources :votes, only: [:create, :destroy]
    end
    resources :comments, only: [:create, :destroy]

    namespace :admin do
      get "/dashboard", to: "base#dashboard"
      resources :users
    end

    namespace :doctor do
      get "/dashboard", to: "base#dashboard"
      resources :deseases
      resources :users do
        resources :pets do
          resources :medical_records
        end
      end
    end

    namespace :secretary do
      get "/dashboard", to: "base#dashboard"
      resources :users do
        resources :pets do
          resources :medical_records do
            resources :bills
          end
        end
      end
    end

    namespace :nurse do
      get "/dashboard", to: "base#dashboard"
      resources :users do
        resources :pets do
          resources :medical_records do
            resources :bills
          end
        end
      end
    end

    namespace :director do
      get "/dashboard", to: "base#dashboard"
      resources :users do
        resources :pets do
          resources :medical_records do
            resources :bills
          end
        end
      end
    end
  end
end
