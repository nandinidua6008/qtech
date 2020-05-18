class QuestionsController < ApplicationController
# 	def subject
# @sub = Subject.all
# end
#  def edit
#       @sub =Subject.find_by_id(params[:id]) 
#     end
# def create
  
# 		@sub = Subject.new(subject_params)
# 		if @sub.save
#               redirect_to  questions_subject_path
#     else
#         	abort(@sub.errors.inspect)
#     end
# end	

# def new
# 	@sub = Subject.new
# end	

# def show
# @sub = Subject.find(params[:id])
# end	
# def destroy
#        @sub = Subject.find_by_id(params[:id])
#          if @sub.present?
#             @sub.destroy
#             redirect_to '/subject'
#          end
        
#     end
# private
# def subject_params
#     params.require(:subject).permit(:id,:name)
#   end
end
