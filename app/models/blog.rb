class Blog < ActiveRecord::Base
  belongs_to :category
  has_many   :articles

  validates :name, presence: true
  validates :url,  presence: true
  validates :rss,  presence: true
end
