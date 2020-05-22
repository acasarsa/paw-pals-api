class Api::V1::DogUserPairsController < ApplicationController

    # create, delete meetUps do we need show page // do we need index to show all pairs the user has? 
    
    def show 
        dog_user_pair = DogUserPair.find(params[:id])
        render json: dog_user_pair
    end

    def create
        dog_user_pair = DogUserPair.create(dog_user_pair_params)
        render json: dog_user_pair
    end 

    def destroy
        dog_user_pair = DogUserPair.find(params[:id])
        dog_user_pair.destroy 
    end 
    

    private

    def dog_user_pair_params
        params.require(:dog_user_pair).permit(:dog_id, :user_id)
    end 
end
