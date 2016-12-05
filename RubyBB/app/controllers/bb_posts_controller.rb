class BbPostsController < ApplicationController
  def create
    @thread = BbThread.find(params[:bb_thread_id])
    @post = @thread.bb_posts.create(bb_post_params)
	redirect_to bb_thread_path(@thread)
  end
 
  private
    def bb_post_params
      params.require(:bb_post).permit(:poster, :body)
    end

end
