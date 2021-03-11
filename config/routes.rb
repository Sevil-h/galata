Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :sites, only: [:index, :show ] do
    member do
      get :videos
      get :articles
      get :audios
      get :photos
    end
  end
  resource :dashboard, only: :show 
