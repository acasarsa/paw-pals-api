class Api::V1::UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update]

    # create, edit, show // delete - cancel any dog_user pairs they are in. 

    def show 
        render json: user
    end

    def create
        user = User.find_or_create_by(user_params)
        render json: user
    end

    # def edit 
    #     render json: user
    # end

    def update
        user = User.update(user_params)
        render json: user
    end


    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

    def find_user
        user = User.find(params[:id])
    end

end
