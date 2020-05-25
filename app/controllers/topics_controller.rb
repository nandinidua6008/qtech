class TopicsController < ApplicationController
	def topic
@topic = Topic.all
@subject=Subject.all
end
 def edit
      @topic =Topic.find_by_id(params[:id]) 
    end
def create
  
		@topic= Topic.new(subject_params)
		if @topic.save
              redirect_to  subjects_subject_path
    # else
    #     	abort(@sub.errors.inspect)
    end
end	
 def edit
      @topic =Topic.find_by_id(params[:id]) 
    end

def update
  # abort params.inspect
      # @sub = Subject.find_by_id(subject_params[:id]) 
      #   if subject_params[:name].present?
      #      @sub.update_attributes(subject_params)
      #   end
      #   if @sub.save
      #       redirect_to '/index'
      #   else
      #      abort(@subjects.errors.messages.inspect)    
      #   end
    end

def new
	@sub = Topic.new
end	

def show
@topic = Topic.find(params[:id])
end	
def destroy
       @topic = Topic.find_by_id(params[:id])
         if @topic.present?
            @topic.destroy
            redirect_to '/subject'
         end
        
    end
private
def topic_params
    params.require(:topic).permit(:id,:name, :subject_id)
  end
end
