class AttendancesController < ApplicationController
  before_action :authenticate_user!

  def new
    @attendance = Attendance.new
  end

  def create
    @event = Event.find(params[:event_id])
    @attendance = Attendance.new(attendee: current_user, attended_event: @event)
  
    if @attendance.save
      redirect_to @event, notice: "Event joined!"
    else
      render :new, notice: "Join has failed."
    end
  end

  def show
    
  end
end
