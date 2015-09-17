class BlogsController < ApplicationController
  def new
    @blog=Blog.new
  end

  def create
    @blog=Blog.new(blog_params)
    if @blog.save
      flash[:success]="saved"
      redirect_to @blog
    end
  end

  def destroy
  end

  def edit
  end

  def show
    @blog=Blog.find_by(id: params[:id])
  end

  def index
    @blogs=Blog.all
  end
  def blog_params
    params.require(:blog).permit(:content,:title)
  end

end
