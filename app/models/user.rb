class User < ApplicationRecord
    has_many :user_data_connectors
    has_many :data_sets, through: :user_data_connectors
    has_secure_password
    validates :name, presence: true
    validates :name, uniqueness: true
end
