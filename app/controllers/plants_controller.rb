class PlantsController < ApplicationController
    wrap_parameters format: []
    def index
        response = Plant.all
        render json: response, status: :ok
    end

    def show
        response = Plant.find(params[:id])
        render json: response, status: :ok
    end

    def create
        response = Plant.create(plant_params)
        render json: response, status: :ok
    end

    private
    def plant_params
        params.permit(:name, :image, :price)
    end

end
