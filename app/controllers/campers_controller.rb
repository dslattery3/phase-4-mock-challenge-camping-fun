class CampersController < ApplicationController


    def index
        render json: Camper.all, status: :ok
    end

    def show
        camper = Camper.find(params[:id])
        activities = camper.activities
        render json: camper, serializer: CamperActivitySerializer, status: :ok
    end

    def create
        camper = Camper.create!(name: params[:name], age: params[:age])
        render json: camper, status: :created
    end

end
