class User < ActiveRecord::Base
  has_many :posts
  has_many :interests
  has_many :groups, :through => :interests
end
