class CommentsController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @comment = @category.comments.new
  end

  def create
    @category = Category.find(params[:category_id])
    @comment = @category.comments.new(comment_params)
    if @comment.save
      redirect_to category_path(@comment.commentable_id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:category_id])
    @comment.destroy

    redirect_to category_path, status: :see_other
  end

  def comment_params
    params.require(:comment).permit(:body, :commentable_id, :commentable_type)
  end
end
