class UserSerializer < ActiveModel::Serializer
  # attributes :id, :username, :password  #pre auth
  attributes :username, :id
  has_many :gamestates
end
