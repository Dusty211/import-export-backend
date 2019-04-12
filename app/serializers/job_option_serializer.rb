class JobOptionSerializer < ActiveModel::Serializer
  attributes :id, :option_text, :morality, :criminality
  belongs_to :job
end
