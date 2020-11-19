Rails.application.routes.draw do

  get '/register', to: 'users#new'
  post '/users', to: 'users#create'

  get  '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get  '/', to: 'application#home'
end
