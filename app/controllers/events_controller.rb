class EventsController < ApplicationController
before_action :set_event, only: %i[show]
before_action :authenticate_user!, except: [:show, :index]

def index
  @time = "#{Time.now.asctime}"
  @events = Event.all
end

def show
@creator = User.where(id: @event.user_id).first
end

def new
  @event = Event.new
end

def create
  @event = Event.new(event_params.merge(user_id: current_user.id))

end

protected

def set_event
  @event = Event.find(params[:id])
end

def event_params
  params.require(:event).permit(:name, :location, :date, :details, :user_id)
end
end