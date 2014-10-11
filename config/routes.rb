Rails.application.routes.draw do
  resources :steps

  resources :avatars

  resources :users do
    resources :steps, only:  [:new, :create, :index]

  end

  resources :sessions ## , only: [:new, :destroy, :create]

  get '/auth/:provider/callback' => 'sessions#create'

  root to: 'application#home'
end
