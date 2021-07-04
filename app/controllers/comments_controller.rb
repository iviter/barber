class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comments_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to advertisements_path, notice: 'Comment was successfully added.' }
        format.json { render json: @comment, status: :created, location: @car }
      else
        format.html { render action: 'new' }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def comments_params
    params.require(:comment).permit(:title, :body, :user_id, :advertisement_id)
  end
end