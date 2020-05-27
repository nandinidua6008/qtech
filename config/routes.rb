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

 get 'subjects/update',to: 'subjects#update'
  # post '/update_subject' to: 'subjects#update'
  get 'subjects/subject' , to: 'subjects#subject'
delete 'subjects/subject' , to: 'subjects#destroy'
 # get 'questions/topic' , to: 'questions#topic'
  get 'questions/question-type' , to: 'questions#question-type'

  get 'subjects/new_sub' , to: 'subjects#new_sub'
  post '/create_subject' , to: 'subjects#create'
  get 'new' , to: 'questions#new'

   
  get 'topics/topic' , to: 'topics#topic'
  get 'topics/question_type' , to: 'topics#question_type'
  post '/create_topic' , to:  'topics#create' , as: :create_topic 
  delete 'topics/topic' , to: 'topics#destroy'

  patch 'subjects', to: 'subject#update'

  get 'objectives/objective' , to: 'objectives#objective'
  get 'objectives/newobjective' , to: 'objectives#newobjective'

  get 'managements/selection' , to: 'managements#selection'
end
