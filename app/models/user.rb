class User < ApplicationRecord
  has_secure_password
  has_many :prints
  has_many :comments

  validates :username, presence: true
  validates :email, uniqueness: true, presence: true
end
