class Post < ActiveRecord::Base
  belongs_to :user
  validates :message, length: {minimum: 10}, :presence => true
end
