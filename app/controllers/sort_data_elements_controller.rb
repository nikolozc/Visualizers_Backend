class SortDataElementsController < ApplicationController
    before_action :set_element, only: [:show,:update,:destroy]
    def index
        elements = SortDataElement.all
        render json: elements, status: 200
    end

    def create
        element = SortDataElement.create(element_params)
        render json: element, status: 201
    end

    def destroy
    elementId = @element.id
    @element.destroy
    end

    def show
    render json: @element, status: 200
    end

    private
    def element_params
    params.permit(:data_set_id, :data)
    end

    def set_element
    @element = SortDataElement.find(params[:id])
    end
end
