class CampersController < ApplicationController
    def index
        campers = Camper.all
        render json: campers
    end

    def show
        camper = Camper.find_by(id: params[:id])
        if camper
        render json: camper, include: :activities
        else
        render json: { error: "camper not found" }, status: :not_found
        end
    end
end
