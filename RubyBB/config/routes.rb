Rails.application.routes.draw do
  get 'welcome/index'
  
  #get ':controller(/:action(/:id))(.:format)'

  get '/login', to: 'sessions#login'
  
  post '/login', to: 'sessions#login'
  
  delete '/logout', to: 'sessions#logout'
  
  get '/home', to: 'sessions#home'
  
  post '/home', to: 'sessions#home'
  
  #get '/articles', to: 'sessions#home'
  
  #post '/login_attempt', to: 'sessions#create'

  get '/signup', to: 'users#new'
  
  resources :users
  
  resources :bb_threads do
	resources :bb_posts
  end

  
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
