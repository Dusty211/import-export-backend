class GamestateSerializer < ActiveModel::Serializer
  attributes :user_id, :company_name, :cash, :luck, :karma, :heat, :streetcred, :xships, :ship_lvl, :xmercs, :savename, :created_at, :updated_at

end
