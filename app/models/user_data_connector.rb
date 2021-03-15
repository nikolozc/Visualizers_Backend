class UserDataConnector < ApplicationRecord
    belongs_to :user
    belongs_to :data_set
end
