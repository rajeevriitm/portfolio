class BlogsController < ApplicationController
  before_action :initial, only: [:edit,:update,:destroy,:show]
  before_action :admin, only: [:edit,:new]
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
    @blog.delete
    redirect_to blogs_path
  end

  def edit
    render 'new'
  end
  def update
    if @blog.update_attributes(blog_params)
      flash[:success]="done"
    else
      flash[:danger]="fail"
    end
    redirect_to blogs_path
  end
  def show
  end

  def index
    @blogs=Blog.all
  end

  private

  def blog_params
    params.require(:blog).permit(:content,:title)
  end
  def initial
    @blog=Blog.find_by(id: params[:id])
  end
  def admin
    redirect_to home_path unless params[:admin] == "raj"
  end
end
