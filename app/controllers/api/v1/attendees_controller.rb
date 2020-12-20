class Api::V1::AttendeesController < ApplicationController

    def index
        attendees = Attendee.all
        render json: attendees
    end

    def show
        attendee = Attendee.find(params[:id])
    end

    def create 
        attendee = Attendee.create!(attendee_params)
        render json: attendee
    end

    def destroy 
        attendee = Attendee.find(params[:id])
        attendee.destroy
    end

    private

    def attendee_params
        params.require(:attendee).permit(:dog, :event)
    end
end
