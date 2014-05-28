namespace :matome do
  desc "Remove old entries from database"
  task :remove => :environment do
    Article.where("posted_at < ?", 1.week.ago).delete_all
  end
end
