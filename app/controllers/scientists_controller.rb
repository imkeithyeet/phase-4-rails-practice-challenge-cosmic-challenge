class ScientistsController < ApplicationController

    def index 
        scientists = Scientist.all
        render json: scientists, status: :ok
    end
    def show 
        scientist = Scientist.find(params[:id])
        render json: scientist, serializer: ScientistWithPlanetSerializer
    end
    def create 
        scientist = Scientist.create!(scientist_params)
        render json: scientist, status: :created
    end
    def update 
        scientist = Scientist.find(params[:id])
        scientist.update!(scientist_params)
        render json: scientist, status: 202
    end
    def destroy 
        scientist = Scientist.find(params[:id])
        scientist.destroy 
        head :no_content
    end
    private 
    def scientist_params
        params.permit(:name, :field_of_study, :avatar)
    end

end

