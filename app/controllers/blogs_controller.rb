class BlogsController < ApplicationController
  def index
    @blogs = Blog.order('name')
  end
end
