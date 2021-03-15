class DataInfosController < ApplicationController
    before_action :set_data_info, only: [:show,:update,:destroy]
    def index
        dataInfos = DataInfo.all
        render json: dataInfos, status: 200
    end

    def create
        dataInfo = DataInfo.create(data_info_params)
        render json: dataInfo, status: 201
    end

    def update
    @data_info.update(data_info_params)
    render json: @data_info, status: 200
    end

    def destroy
    dataInfoId = @data_info.id
    @data_info.destroy
    end

    def show
    render json: @data_info, status: 200
    end

    private
    def data_info_params
    params.permit(:data_set_id, :run_time, :algo_used)
    end

    def set_data_info
    @data_info = DataInfo.find(params[:id])
    end
end

