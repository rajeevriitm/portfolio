class CommentsController < ApplicationController
  def create
    comment=Comment.new(blog_id: params[:blog_id],content: params[:comment][:content], name: params[:comment][:name])
    if comment.save
      flash[:success]="Your comment has been added"
      expire_page controller: "blogs", action: "show", id: params[:blog_id]
      expire_page controller: "blogs",action: "index"
      redirect_to :back || bolgs_path
    else
      flash[:danger]="Unable to add your comment"
      redirect_to blogs_path
    end
  end
end
