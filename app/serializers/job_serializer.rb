class JobSerializer < ActiveModel::Serializer
  attributes :id, :streetcred_mod, :cargo, :cargo_value, :job_text
  has_many :job_options
  belongs_to :npc
end
