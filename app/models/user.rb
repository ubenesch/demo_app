class User < ActiveRecord::Base
  has_many :microposts
end

class Micropost <ActiveRecord::Base
  belongs_to :user
  validates :content, length: { maximum: 140 }
end
