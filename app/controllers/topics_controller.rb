class TopicsController < ApplicationController
	def create
	@topic = Topic.new(topic_params)
	if @topic.save
      redirect_to topics_topic_path       
    else
        abort(@topic.errors.inspect)
    end
end

def new
	@topic = Topic.new
  @subject = Subject.all
end

def topic
  @topic= Topic.new
  @topic_list = Topic.all
end

def edit
  @topic = Topic.find(params[:id])
end

 
def update
  @topic = Topic.find(params[:id])
 
  if @topic.update(topic_params)
    redirect_to @topic
  else
    render 'topics_topic_path'
  end
end

def destroy
    @topic = Topic.find_by_name("name")
    if @topic.present?
      @topic.destroy
    end
    redirect_to topics_topic_path
end

private
	def topic_params   
       params.require(:topic).permit(:name, :subject_id)   
    end  
end
