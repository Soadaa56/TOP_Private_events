class AttendancesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event

  def new
    @attendance = Attendance.new
  end

  def create
    @attendance = Attendance.new(attendee: current_user, attended_event: @event)

    if @attendance.save
      redirect_to @event, notice: "Event joined!"
    else
      render :new, notice: "Join has failed."
    end
  end

  def destroy
    @attendance = Attendance.find_by(attendee: current_user, attended_event: @event)
    @attendance.destroy if @attendance

    redirect_to @event, notice: "Event left."
  end

  protected

  def set_event
    @event = Event.find(params[:event_id])
  end
end
