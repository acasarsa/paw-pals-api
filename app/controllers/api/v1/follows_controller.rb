class Api::V1::FollowsController < ApplicationController

    def show
        follow = Follow.find(params[:id])
        render json: follow, except: [:created_at, :updated_at]
        # render json: follow, except: [:created_at, :updated_at], include: [:follower, :followee ], status: 201
        # render json: FollowSerializer.new(follow).serializable_hash, status: 201
        
    end

    def index 
        follows = Follow.all
        render json: follows, except: [:created_at, :updated_at]
        # render json: FollowSerializer.new(follows)
    end

    def create 
        follow = Follow.create!(follow_params)
        render json: {followee: follow.followee, follower: follow.follower}, except: [:created_at, :updated_at], status: :ok
        # amaze balls do i even need serializer??? 
        # render json: { complex: complex, fields: fields, search_params: search_params }, status: :ok

    end

    def destroy
        # byebug
        follow = Follow.find(params[:id])
        # byebug
        follow.destroy
        # byebug
        render json: {id: params[:id]}
        # byebug
    end

    private

    def follow_params
        params.require(:follow).permit(:follower_id, :followee_id)
    end
end
