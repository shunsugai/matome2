class Article < ActiveRecord::Base
  #relation
  belongs_to :blog

  #validations
  validates_uniqueness_of :url
  validates_presence_of   :url, :title, :posted_at
  validate  :article_is_not_promotion,
            :posted_at_is_invalid,
            :url_must_be_same_as_blog_host
  validates :url,   length: { maximum: 2000 }
  validates :title, length: { maximum: 100 }
  validates :url, url: true, allow_blank: true

  #scopes
  default_scope { where(show: true) }
  scope :today,     -> { where('posted_at > ?', 1.day.ago) }
  scope :this_week, -> { where('posted_at > ?', 7.days.ago) }
  scope :time_desc, -> { order('posted_at DESC') }

  private
  def article_is_not_promotion
    errors.add(:title, "PR article") if self.title =~ /^PR:/
  end

  def posted_at_is_invalid
    errors.add(:posted_at, "posted_at is invalid") if self.posted_at > Time.now
  end

  def url_must_be_same_as_blog_host
    if URI.parse(self.url).host != URI.parse(self.blog.url).host
      errors.add(:url, 'Not same as its blog host')
    end
  end
end
