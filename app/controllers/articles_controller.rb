class ArticlesController < ApplicationController
  def index
    if params[:category_id]
      @category = Category.find(params[:category_id])
      @articles = @category.articles.all
    elsif params[:blog_id]
      @blog = Blog.find(params[:blog_id])
      @articles = @blog.articles.all
    else
      @articles = Article.all
    end
  end
end
