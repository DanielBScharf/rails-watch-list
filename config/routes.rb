Rails.application.routes.draw do
  root to: 'pages#home'
  get "movies/index"
  get "movie/index"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: [:index, :show, :create, :new] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
