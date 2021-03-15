class DataSet < ApplicationRecord
    has_many :user_data_connectors
    has_many :users, through: :user_data_connectors
    has_many :data_infos
    has_many :sort_data_elements
end
