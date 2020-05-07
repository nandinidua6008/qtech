Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :users
  
  root to: 'users#index'
 
	get 'register' , to: 'users#register'
    post '/create_registration' , to: 'users#create' 
	#get 'dashboard' , to: 'users#dashboard'
	# get 'create' , to: 'sessions#create'
	get 'contact' , to: 'users#contact'
	get 'login', to: 'users#login'
end
