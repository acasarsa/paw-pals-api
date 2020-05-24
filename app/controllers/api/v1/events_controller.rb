class Api::V1::EventsController < ApplicationController
    before_action :find_event, only: [:show, :update, :destroy ]

    def show 
        render json: event
    end

    def index 
        events = Event.all
        render json: EventSerializer.new(events)
    end

    def create
        event = Event.create!(event_params)
        render json: event
    end

    def update
        event.update(event_params)
        render json: event
    end

    def destroy 
        event.destroy
    end

    private

    def event_params
        params.require(:event).permit(:title, :date, :image, :description)
    end

    def find_event
        event = Event.find(params[:id])
    end
end
