require 'rss'

namespace :matome do
  desc "Remove old entries from database"
  task :remove => :environment do
    Article.where("posted_at < ?", 1.week.ago).delete_all
  end

  desc 'Insert new entries from RSS'
  task :insert => :environment do
    Blog.all.each do |blog|
      rss = RSS::Parser.parse(blog.rss)
      rss.items.each do |item|
        article = Article.new
        article.title      = item.title
        article.posted_at  = item.date.to_s
        article.url        = item.link
        article.blog_id    = blog.id
        begin
          article.save
        rescue ActiveRecord::StatementInvalid
          next
        rescue ActiveModel::Errors
          next
        end
      end
    end
  end
end
