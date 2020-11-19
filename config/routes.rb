Rails.application.routes.draw do

  get '/register', to: 'users#new'
  post '/users', to: 'users#create'
  get  '/login', to: 'sessions#new'
end
