class Api::V1::MeetUpsController < ApplicationController
    before_action :find_meet_up, only: [:show, :update, :delete]
    # create, edited, delete, show,  index? 
    def show
        render json: meet_up
    end 

    def create 
        meet_up = MeetUp.create(meet_up_parmas)
        render json: meet_up
    end 

    # def edit 
    #     render json: meet_up

    # end 

    def update 
        meet_up = MeetUp.update(meet_up_parmas)
        render json: meet_up
    end 
    
    def destroy 
        # meet_up = MeetUp.find(params[:id])
        meet_up.destroy 
    end 

    private 


    def meet_up_parmas
        params.require(:meet_up).permit(:date, :first_dog_user_pair_id, :second_dog_user_pair_id)
    end 

    def find_meet_up
        meet_up = MeetUp.find(params[:id])
    end
end
