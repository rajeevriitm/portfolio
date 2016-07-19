class BlogsController < ApplicationController
  before_action :initial, only: [:edit,:update,:destroy,:show]
  before_action :admin, only: [:edit,:new]
  caches_page :show,:index
  def new
    @blog=Blog.new
  end

  def create
    @blog=Blog.new(blog_params)
    if @blog.save
      expire_page action: "index"
      redirect_to @blog
    end
  end

  def destroy
    @blog.delete
    expire_page action: "index"
    expire_page action: "show", id: @blog.id
    redirect_to blogs_path
  end

  def edit
    render 'new'
  end
  def update
    if @blog.update_attributes(blog_params)
      expire_page action: "index"
      expire_page action: "show", id: @blog.id
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
