class CommentsController < ApplicationController
  def create
    comment=Comment.new(blog_id: params[:blog_id],content: params[:comment][:content], name: params[:comment][:name])
    if comment.save
      flash[:success]="Your comment has been added"
      redirect_to :back || bolgs_path
    else
      flash[:danger]="Unable to add your comment"
      redirect_to home_path
    end
  end
end
