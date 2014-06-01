class Blog < ActiveRecord::Base
  belongs_to :category
  has_many   :articles

  validates :name, presence: true, length: { maximum: 50 }
  validates :url,  presence: true
  validates :rss,  presence: true
end
