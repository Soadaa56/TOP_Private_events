class EventsController < ApplicationController
before_action :set_event, only: %i[show]

  def index
    @time = "#{Time.now.asctime}"
    @events = Event.all
  end

  def show
   @creator = User.where(id: @event.user_id).first
  end

  def create
    @event = Event.new
  end

  protected

  def set_event
    @event = Event.find(params[:id])
  end
end