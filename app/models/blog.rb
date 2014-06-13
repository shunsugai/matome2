class Blog < ActiveRecord::Base
  # relations
  belongs_to :category
  has_many   :articles

  # validations
  validates :name, presence: true, length: { maximum: 50 }
  validates :url,  presence: true, length: { maximum: 2000 }
  validates :rss,  presence: true, length: { maximum: 2000 }
  validates :url, url: true, allow_blank: true
  validates :rss, url: true, allow_blank: true

  # scopes
  default_scope { where(show: true) }
end
