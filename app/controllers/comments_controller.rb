class CommentsController < ApplicationController
  before_action :set_commentable
  def create
    @comment = @commentable.comments.new(comment_params.merge(user: current_user))

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @commentable, notice: "Comment was successfully created." }
        format.turbo_stream
      else
        format.html { redirect_to @commentable, notice: "Error in creating comment" }
        format.turbo_stream
      end
    end
  end

  private

  def set_commentable
    @commentable = params[:commentable_type].constantize.find(params[:commentable_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
