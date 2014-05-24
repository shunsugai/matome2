class BlogsController < ApplicationController
  def index
    if params[:category_id]
      category = Category.find(params[:category_id])
      @blogs = category.blogs.order('name')
    else
      @blogs = Blog.order('name')
    end
  end
end
