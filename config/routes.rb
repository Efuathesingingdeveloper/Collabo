Rails.application.routes.draw do

  get '/register', to: 'user#new'
  post '/users', to: 'user#create'

end
