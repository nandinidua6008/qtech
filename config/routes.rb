Rails.application.routes.draw do

  devise_for :users
  root to: 'users#index'

  resource :users
  
  get 'register' , to: 'users#register'

  post '/create_registration' , to: 'users#create' 

  

  get 'create' , to: 'sessions#create'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  
 
	
    
	get 'dashboard' , to: 'users#dashboard'
	get 'sessions/destroy' , to: 'sessions#destroy'

  get 'sessions/new', to: 'sessions#new'
	# get 'create' , to: 'sessions#create'
	get 'contact' , to: 'users#contact'
	#get 'login', to: 'users#login'
end
