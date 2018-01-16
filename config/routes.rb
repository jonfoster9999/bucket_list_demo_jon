Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  devise_scope :user do
    authenticated :user do
      root to: 'movies#index'
    end
    unauthenticated :user do
      root 'welcome#home'
    end
  end

  resources :users do
    resources :bucket_lists
  end
  resources :movies
  resources :bucket_list_movies

  get '/movies/highest_rating' => 'movies#highest_rating', as: :highest_rating
  post '/users/:user_id/bucket_lists/:id/movies/:id/delete', to: 'bucket_lists#delete_movie'

end
