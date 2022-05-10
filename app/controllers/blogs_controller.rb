class BlogsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @blogs = Blog.all
    @top_blogs = Blog.arrange_blogs.limit(10)
  end

  def show
    @blog = Blog.find(params[:id])
    impressionist(@blog)
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blogs_path, notice: "Blog was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "Blog was successfully updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    if @blog.destroy
      redirect_to blogs_path, notice: "Blog was successfully deleted"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def blog_params
      params.require(:blog).permit(:title, :short_description, :body)
    end
end
