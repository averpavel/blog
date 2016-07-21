class Article < ActiveRecord::Base
  validates :title, length: { minimum: 10 ,
    too_short: "Title is too short, %{count} is the minimum length" }
  validates :content, length: { in: 10..50,
    too_short: "Content is too short",
    too_long: "Content is too long" }
end
