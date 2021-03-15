class UserDataConnectorSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :data_set_id
end
