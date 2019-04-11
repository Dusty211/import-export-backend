class NpcSerializer < ActiveModel::Serializer
  attributes :id, :name, :min_streetcred, :max_streetcred, :npc_karma
  has_many :jobs
end
