class ActivitiesController < ApplicationController
    def index
        activities = Activity.all
        render json: activities
    end

    def destroy
     activity = Activity.find_by(id: params[:id])
     if activity
     activity.destroy!
     head :no_content
     else
    render json: { error: "activity not found" }, status: :not_found
    end
    end    

    def create
        activity = Activity.create!(activity_params)
        render json: activity, status: :created
      end

    private

      def activity_params
        params.permit(:name, :difficulty)
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
