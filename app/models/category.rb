class Category < ActiveRecord::Base
  # relations
  has_many :blogs
  has_many :articles, :through => :blogs

  # validations
  validates :name, presence: true, length: { maximum: 20 }

  # scopes
  default_scope { where(show: true) }
end
