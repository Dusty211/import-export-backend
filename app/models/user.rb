class User < ApplicationRecord
  has_secure_password
  has_many :gamestates, dependent: :destroy
  validates :username, uniqueness: { case_sensitive: false }
end
