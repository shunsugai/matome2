class Article < ActiveRecord::Base
  #relation
  belongs_to :blog

  #validations
  validates_uniqueness_of :url
  validates_presence_of   :url, :title, :posted_at
  validate                :article_is_not_promotion
  validates :url,   length: { maximum: 2000 }
  validates :title, length: { maximum: 100 }

  #scopes
  scope :show,      where(:show => true)
  scope :today,     where("time > ?", 1.days.ago)
  scope :this_week, where("time > ?", 7.days.ago)
  scope :time_desc, order("time DESC")

  private
  def article_is_not_promotion
    errors.add(:title, "PR article") if self.title =~ /^PR:/
  end
end
