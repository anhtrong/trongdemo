class CommentsController < ApplicationController
	def new	
	end

	def create
		@comment = Comment.new(comment_params)
		if @comment.save
			redirect_to :back
		end
	end


	def index
	end

	def show
	end

	private

		def comment_params
			params.require(:comment).permit(:content,:user_id,:micropost_id)
		end
end
