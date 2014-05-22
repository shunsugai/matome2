namespace :matome do
  desc "Remove old entries from database"
  task :remove => :environment do
    Article.where("created_at < ?", 1.week.ago).delete_all
  end
end
