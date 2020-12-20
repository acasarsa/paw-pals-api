class Api::V1::FollowsController < ApplicationController

    def show
        follow = Follow.find(params[:id])
        render json: follow, except: [:created_at, :updated_at]
    end

    def index 
        follows = Follow.all
        render json: follows, except: [:created_at, :updated_at]
    end

    def create 
        follow = Follow.create!(follow_params)
        render json:{follow_id: follow.id, followee: follow.followee, follower: follow.follower}, except: [:created_at, :updated_at], status: :ok
    end

    def destroy
        follow = Follow.find(params[:id])
        follow.destroy
        render json: {id: params[:id]}
    end

    private

    def follow_params
        params.require(:follow).permit(:follower_id, :followee_id)
    end
end
