class CommentsController < InheritedResources::Base
	def create
		@comment = Comment.new(comment_params)

		if @comment.save
			;flash[:notice] = 'Comment was made'
			redirect_to(@comment.post)
		else
			;flash[:notice] = "Comment was NOT made #{@comment.errors}"
			redirect_to(@comment.post)
		end

	end
  private

    def comment_params
      params.require(:comment).permit(:name, :email, :body, :post_id)
    end
end
