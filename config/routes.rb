Rails.application.routes.draw do
  resources :users
  resources :sessions

  get '/auth/:provider/callback' => 'sessions#create'

  root to: 'application#home'
end
