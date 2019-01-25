Rails.application.routes.draw do
  devise_for :users, controller: {}
  scope "(:locale)", locale: /en|vi/ do
    namespace :users do
      root "dashboard#index"
    end
    namespace :admins do
      root "admins/dashboard#index"
      resources :users
    end
  end
end
