class EventsController < ApplicationController
before_action :set_event, only: %i[show]
before_action :authenticate_user!, only: %i[new]

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
  
end

protected

def set_event
  @event = Event.find(params[:id])
end
end