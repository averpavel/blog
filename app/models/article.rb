class Article < ActiveRecord::Base
  validates :title, length: { minimum: 10 }
  validates :content, length: { in: 10..50 }
end
