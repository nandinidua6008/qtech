class ManagementsController < ApplicationController
		def selection
		@sel = User.select_subject
		if User.select_subject == "DBMS"
			render 'DBMS'
		else  User.select_subject == "Java"
			render 'Java'
		else User.select_subject == "C"
			render 'c'
		end
end
