class JobOptionSerializer < ActiveModel::Serializer
  attributes :id, :option_text, :morality, :criminality
end
