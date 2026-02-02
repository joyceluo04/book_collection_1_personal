Rails.application.routes.draw do
  root "user_books#index"
  resources :books
  resources :user_books
  resources :users

  get "up" => "rails/health#show", as: :rails_health_check
end
