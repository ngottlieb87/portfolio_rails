class CommentsController < ApplicationController
  before_action :authorize, only: [:new, :create]

  def new
    @project = Project.find(params[:project_id])
    @comment = @project.comments.new
  end

  def create
    @project = Project.find(params[:project_id])
    @comment = @project.comments.new(comment_params)
    if @comment.save
      flash[:notice] = "Comment successfully added!"
      redirect_to project_path(@project.id)
    else
      render :new
    end
  end

  def destroy
    @comment = comment.find(params[:id])
    @comment.destroy
    flash[:alert] = "Comment Deleted"
    redirect_to comment_path(@comment.project_id)
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :project_id)
    end
end
