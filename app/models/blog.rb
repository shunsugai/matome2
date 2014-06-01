class Blog < ActiveRecord::Base
  belongs_to :category
  has_many   :articles

  validates :name, presence: true, length: { maximum: 50 }
  validates :url,  presence: true, length: { maximum: 2000 }
  validates :rss,  presence: true, length: { maximum: 2000 }
end
