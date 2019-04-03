class User < ApplicationRecord
  has_many :gamestates, dependent: :destroy
end
