class ThreadsController < ApplicationController


def new
end

def index
	@threads = RubyBbThread.all
end

def create
	@thread = RubyBbThread.new(thread_params)
	@thread.save
	redirect_to '/threads/' + @thread.id.to_s
	
end

def show
	@thread = RubyBbThread.find(params[:id])
end

	private
		def thread_params
			params.require(:thread).permit(:title, :text)
		end
		

end
