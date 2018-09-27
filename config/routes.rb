require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  resources :exams
  resources :high_scores
  devise_for :users, controllers: { registrations: "users/registrations", sessions: 'users/sessions', passwords: "users/passwords", omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'home#index'

  resources :locations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
