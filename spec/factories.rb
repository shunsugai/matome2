FactoryGirl.define do
  factory :article do
    title 'This is test entry'
    url   'http://example.com/this_is_test_entry_001'
    posted_at 1.week.ago
    blog
  end

  factory :article_posted_at_a_week_ago, :class => Article do
    title 'article_posted_at_a_week_ago'
    url   'http://example.com/posted_at_a_week_ago'
    posted_at 1.week.ago
    blog
  end

  factory :article_posted_at_6_days_ago, :class => Article do
    title 'article_posted_at_6_days_ago'
    url   'http://example.com/posted_at_6_days_ago'
    posted_at 6.days.ago
    blog
  end

  factory :article_posted_at_a_day_ago, :class => Article do
    title 'article_posted_at_a_day_ago'
    url   'http://example.com/article_posted_at_a_day_ago'
    posted_at 1.day.ago
    blog
  end

  factory :blog do
    name 'test_blog'
    url  'http://example.com'
    rss  'http://example.com/feed'
    category
  end

  factory :category do
    name 'test'
  end
end
