class UserSerializer < ActiveModel::Serializer
  # attributes :id, :username, :password  #pre auth
  attributes :username
  has_many :gamestates
end
