Rails.application.routes.draw do
  resources :favorites
  resources :jobs
  resources :users
  post '/login', to: 'auth#login'
  post '/signup', to: 'user#create'
  get '/profile', to: 'user#profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
