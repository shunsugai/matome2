class Category < ActiveRecord::Base
  has_many :blogs
  has_many :articles, :through => :blogs

  validates :name, presence: true
end
