FactoryGirl.define do

  factory :article_posted_at_a_week_ago, class: Article do
    title 'article_posted_at_a_week_ago'
    url   'http://example.com/posted_at_a_week_ago'
    posted_at 1.week.ago
    blog
  end

  factory :article_posted_at_6_days_ago, class: Article do
    title 'article_posted_at_6_days_ago'
    url   'http://example.com/posted_at_6_days_ago'
    posted_at 6.days.ago
    blog
  end

  factory :article_posted_at_a_day_ago, class: Article do
    title 'article_posted_at_a_day_ago'
    url   'http://example.com/article_posted_at_a_day_ago'
    posted_at 1.day.ago
    blog
  end

  factory :blog_for_insert_task, class: Blog do
    name '痛いニュース(ﾉ∀`)'
    url  'http://blog.livedoor.jp/dqnplus/'
    rss  'http://blog.livedoor.jp/dqnplus/index.rdf'
    category
  end
end