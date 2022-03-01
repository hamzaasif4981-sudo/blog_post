class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blogs_path, notice: "Blog was successfuly created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def blog_params
      params.require(:blog).permit(:name, :short_description, :post)
    end
end
