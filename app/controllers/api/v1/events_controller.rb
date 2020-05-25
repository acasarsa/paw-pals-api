class Api::V1::EventsController < ApplicationController
    # before_action :find_event, only: [:update, :destroy ]

    def show 
        event = Event.find(params[:id])
        render json: EventSerializer.new(event)
    end

    def index 
        events = Event.all
        render json: EventSerializer.new(events)
    end

    def create
        event = Event.create!(event_params)
        render json: EventSerializer.new(event)
    end

    def update
        event = Event.find(params[:id])
        event.update(event_params)
        render json: EventSerializer.new(event)
    end

    def destroy 
        event = Event.find(params[:id])
        event.destroy
    end

    private

    def event_params
        params.require(:event).permit(:title, :date, :image, :description)
    end

    # def find_event
    #     event = Event.find(params[:id])
    # end
end
