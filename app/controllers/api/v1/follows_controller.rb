class Api::V1::FollowsController < ApplicationController

    def show
        follow = Follow.find(params[:id])
        render json: FollowSerializer.new(follow)
        # render json: follow, except: [:created_at, :updated_at]
        
    end

    def index 
        follows = Follow.all
        render json: FollowSerializer.new(follows)
        # render json: follows, except: [:created_at, :updated_at]
    end

    def create 
        follow = Follow.create!(follow_params)
        render json: follow, except: [:created_at, :updated_at]

    end

    def destroy
        follow = Follow.find(params[:id])
    end

    private

    def follow_params
        params.require(:follow).permit(:follower_id, :followee_id)
    end
end
