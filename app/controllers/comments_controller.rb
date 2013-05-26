class CommentsController < ApplicationController
	
	#@username = User.find(session[:user_id]).email

	def create
	    @picture = Picture.find(params[:picture_id])
	    @comment = @picture.comments.create(params[:comment])
	    redirect_to picture_path(@picture)
	end

	def destroy
    	@picture = Picture.find(params[:picture_id])
    	@comment = @picture.comments.find(params[:id])
    	@comment.destroy
    	redirect_to picture_path(@picture)
  	end
end
