class BlogsController < ApplicationController


  def new
    @blog = Blog.new
    @blogs = Blog.all
  end

  def create
      # ストロングパラメーターを使用
      blog = Blog.new(blog_params)
      # DBへ保存する
      blog.save
      flash[:notice] = "Book was successfully created."
      redirect_to blog_path(blog.id)
    end


    def show
      @blog = Blog.find(params[:id])
    end

    def edit
      @blog = Blog.find(params[:id])
    end

    def update
        blog = Blog.find(params[:id])
        blog.update(blog_params)
        flash[:notice] = "Book was successfully updated."
        redirect_to blog_path(blog.id)

    end
    def destroy
        blog = Blog.find(params[:id])
        blog.destroy
        flash[:notice] = "Book was successfully destroyed."
        redirect_to blogs_new_path
    end

 private

    def blog_params
        params.require(:blog).permit(:title, :body)
    end


end
