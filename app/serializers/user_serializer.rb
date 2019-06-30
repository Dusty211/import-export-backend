class UserSerializer < ActiveModel::Serializer
  attributes :username, :id
  has_many :gamestates
end
