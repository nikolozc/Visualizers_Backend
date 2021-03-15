class UserDataConnectorsController < ApplicationController
    def index
        userDatas = UserDataConnector.all
        render json: user_datas, status: 200
    end

    def create
        userData = UserDataConnector.create(user_data_params)
        render json: userData, status: 201
    end

    private
    def user_data_params
    params.permit(:user_id, :data_set_id)
    end
end
