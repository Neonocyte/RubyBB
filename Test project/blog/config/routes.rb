Rails.application.routes.draw do

  get ':controller(/:action(/:id))(.:format)'

  get '/login', to: 'sessions#login'
  
  post '/login', to: 'sessions#login'
  
  delete '/logout', to: 'sessions#logout'
  
  get '/home', to: 'sessions#home'
  
  post '/home', to: 'sessions#home'
  
  #get '/articles', to: 'sessions#home'
  
  #post '/login_attempt', to: 'sessions#create'

  get '/signup', to: 'users#new'
  
  resources :users
  
  resources :sessions

  resources :articles
  root 'articles#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
