class CommentsController < ApplicationController
  before_action :authorize, only: [:new, :create]
  before_action :authorize_admin, only: [:edit, :update, :destroy]
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

  def edit
    @project = Project.find(params[:project_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @project = Project.find(params[:project_id])
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      flash[:notice] = "Comment Updated"
      redirect_to project_path(@project)
    else
      render :edit
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
      params.require(:comment).permit(:body, :user_id)
    end
end
