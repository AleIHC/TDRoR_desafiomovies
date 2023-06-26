Rails.application.routes.draw do
  get 'index/index'
  get 'documentary_films/index'
  get 'documentary_films/create'
  get 'documentary_films/new'
  get 'shows/index'
  get 'shows/create'
  get 'shows/new'
  get 'movies/index'
  get 'movies/create'
  get 'movies/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post 'shows', to: "shows#create"
  post 'movies', to: "movies#create"
  post 'documentary_films', to: "documentary_films#create"
  # Defines the root path route ("/")
  root "index#index"
end
