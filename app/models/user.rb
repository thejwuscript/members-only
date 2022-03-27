class User < ApplicationRecord
  has_many :posts
  
  validates :username, presence: true, uniqueness: true, length: { in: 6..12 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 4..10 }
end
