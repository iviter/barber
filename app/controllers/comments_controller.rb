class CommentsController < ApplicationController
  before_action :find_comment, only: %i[edit update destroy]

  def create
    @comment = Comment.new(comments_params)

    if @comment.save
      redirect_to advertisement_path(advertisement.id), notice: 'Comment was successfully added.'
    else
      render action: 'new'
    end
  end

  def edit
    advertisement
  end

  def update
    if @comment.update_attributes(comments_params)
      redirect_to advertisement_path(advertisement.id), notice: 'Comment was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @comment.destroy

    redirect_to advertisement_path(advertisement.id), notice: 'Comment was successfully deleted.'
  end

  private

  def comments_params
    params.require(:comment).permit(:title, :body).merge(user_id: current_user.id,
                                                         advertisement_id: params[:advertisement_id])
  end

  def find_comment
    @comment ||= Comment.find(params[:id])
  end

  def advertisement
    @ad ||= Advertisement.find(params[:advertisement_id])
  end
end
