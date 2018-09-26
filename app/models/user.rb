class User < ActiveRecord::Base
  validates :username, length: { minimum: 5 }, uniqueness: true, presence: true
  has_many :comments
  has_many :messages
end
