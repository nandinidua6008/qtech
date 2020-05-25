class SubjectsController < ApplicationController
	def subject
@sub = Subject.all
end
 def edit
      @sub =Subject.find_by_id(params[:id]) 
    end
def create
  
		@sub = Subject.new(subject_params)
		if @sub.save
              redirect_to  subjects_subject_path
    # else
    #     	abort(@sub.errors.inspect)
    end
end	
 def edit
      @sub =Subject.find_by_id(params[:id]) 
    end

def update
  
      # @sub = Subject.find_by_id(subject_params[:id]) 
      #   if subject_params[:name].present?
      #      @sub.update_attributes(subject_params)
      #   end
      #   if @sub.save
      #       redirect_to '/index'
      #   else
      #      abort(@subjects.errors.messages.inspect)    
      #   end
      # abort params.inspect
      # @subject=Subject.find_by_id(subject_params[:id])
      # if @subject_params[:name].present?
      #   @subject.update_attributes(params[:subject])
      #   redirect_to '/subject'
      # end
       @subject = Subject.new(subject_params)
    if @subject.save
      flash[:notice] = "Subject created successfully"
      redirect_to  subjects_subject_path
    
    end
    end

def new
	@sub = Subject.new
end	

def show
@sub = Subject.find(params[:id])
end	
def destroy
       @sub = Subject.find_by_id(params[:id])
         if @sub.present?
            @sub.destroy
            redirect_to '/subject'
         end
        
    end
private
def subject_params
    params.require(:subject).permit(:id,:name)
  end


end
