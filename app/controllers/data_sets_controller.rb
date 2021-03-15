class DataSetsController < ApplicationController
    before_action :set_data_set, only: [:show,:update,:destroy]
    def index
        dataSets = DataSet.all
        render json: dataSets, status: 200
    end

    def create
        dataSet = DataSet.create(data_set_params)
        render json: dataSet, status: 201
    end

    def update
    @data_set.update(data_set_params)
    render json: @data_set, status: 200
    end

    def destroy
    dataSetId = @data_set.id
    @data_set.destroy
    end

    def show
    render json: @data_set, status: 200
    end

    private
    def data_set_params
    params.permit(:name)
    end

    def set_data_set
    @data_set = DataSet.find(params[:id])
    end
end

