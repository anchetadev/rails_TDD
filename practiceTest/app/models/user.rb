class User < ActiveRecord::Base
    has_many :posts
    validates :name, :presence => true
    validates :name, length: { minimum: 5 }
end
