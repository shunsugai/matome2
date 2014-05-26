FactoryGirl.define do
  factory :article do
    title     'This is test entry'
    url       'http://example.com/this_is_test_entry_001'
    posted_at 1.day.ago
  end

  factory :blog do
    name 'test_blog'
    url  'http://example.com'
    rss  'http://example.com/feed'
  end

  factory :category do
    name 'test'
  end
end
