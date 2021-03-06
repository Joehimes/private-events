class EventsController < ApplicationController
    include EventsHelper

    def new
        @event = Event.new
    end

    def create
        @event = current_user.created_events.build(event_params)
        if @event.save
            redirect_to user_path(current_user)
        else
            render 'new'
        end
    end

    def show
        @event = Event.find(params[:id])
    end

    def index
        @past = Event.past.all
        @upcoming = Event.upcoming.all
        # @events = Event.all
    end

    private

        def event_params
            params.require(:event).permit(:description, :date)
        end

end
