class ActivitiesController < ApplicationController
    def index
        activities = Activity.all
        render json: activities
    end

    #  def show
    #     # if params[]
    #     activity = Activity.find_by(id: params[:id])
    #     if activity
    #     render json: activity
    #    else
    #     render json: { error: "activity not found" }, status: :not_found
    #    end
        
    #    end
    
    # end
 end
