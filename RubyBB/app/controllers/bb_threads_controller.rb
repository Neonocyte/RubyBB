class BbThreadsController < ApplicationController
def new
	@thread = BbThread.new
end

def index
	@threads = BbThread.all
end

def create
	@thread = BbThread.new(bb_thread_params)
	@thread.save
	redirect_to @thread
	

def edit
	@thread = BbThread.find(params[:id])
end

	
def update
  @thread = BbThread.find(params[:id])
 
  if @thread.update(bb_thread_params)
    redirect_to @thread
  else
    render 'edit'
  end
end
 
	
end

def show
	@thread = BbThread.find(params[:id])
end

	private
		def bb_thread_params
			params.require(:bb_thread).permit(:title, :text, :body)
		end
		

end
