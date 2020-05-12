Rails.application.routes.draw do

  devise_for :users
  root to: 'users#index'

  resource :users
  resource :subjects
  get 'register' , to: 'users#register'

  post '/create_registration' , to: 'users#create' 

  

  get 'create' , to: 'sessions#create'

    
	get 'dashboard' , to: 'users#dashboard'
	get 'sessions/destroy' , to: 'sessions#destroy'

  get 'sessions/new', to: 'sessions#new'
	# get 'create' , to: 'sessions#create'
	get 'contact' , to: 'users#contact'
	#get 'login', to: 'users#login'

  get 'questions/subject' , to: 'questions#subject'
  get 'questions/topic' , to: 'questions#topic'
  get 'questions/question-type' , to: 'questions#question-type'
  get 'questions/new_sub' , to: 'questions#new_sub'
  post '/create_subject' , to: 'questions#create'
  get 'new' , to: 'questions#new'

end
