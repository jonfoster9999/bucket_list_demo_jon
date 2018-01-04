Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root 'welcome#home'

  resources :users do
    resources :bucket_lists
  end
  resources :movies
  resources :bucket_list_movies


end
