class Category < ActiveRecord::Base
  has_many :blogs
  has_many :articles, :through => :blogs
end
