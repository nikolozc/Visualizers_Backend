class DataInfoSerializer < ActiveModel::Serializer
  attributes :id, :data_set_id, :run_time, :algo_used
end
