Rails.application.routes.draw do
  resources :borrows
  resources :books
  resources :book_types
  resources :publishers
  resources :topics
  resources :authers
  resources :subscriptions
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
