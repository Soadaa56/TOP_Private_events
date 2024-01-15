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
  @event = current_user.events.build
end

def create
  @event = current_user.events.build(event_params)

  if @event.save
    redirect_to @event, notice: "Event created successfully"
  else
    render :new
  end
end

protected

def set_event
  @event = Event.find(params[:id])
end

def event_params
  params.require(:event).permit(:name, :location, :date, :time, :details, :user_id)
end
end