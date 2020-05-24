class Api::V1::FollowsController < ApplicationController

    def show
        follow = Follow.find(params[:id])
        render json: follow
    end

    def create 
        follow = Follow.create!(follow_params)
        render json: follow

    end

    def destroy
        follow = Follow.find(params[:id])
    end

    private

    def follow_params
        params.require(:follow).permit(:follower, :followee)
    end
end
