class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comments_params)

    if @comment.save
      redirect_to advertisements_path, notice: 'Comment was successfully added.'
    else
      render action: 'new'
    end
  end

  private

  def comments_params
    params.require(:comment).permit(:title, :body).merge(user_id: current_user.id, advertisement_id: params[:advertisement_id])
  end
end