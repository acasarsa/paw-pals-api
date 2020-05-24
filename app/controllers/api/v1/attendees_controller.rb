class Api::V1::AttendeesController < ApplicationController

    def index
        attendees = Attendee.all
        # render json: attendees
        render json: AttendeeSerializer.new(attendees)
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
        # render json: attendees 
        # do i do that? i would be viewing this on the dog's profile. or event page
        # events attending listsed and cancel button or leave party 
    end

    private

    def attendee_params
        params.require(:attendee).permit(:dog, :event)
    end
end
