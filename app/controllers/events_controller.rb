class EventsController < ApplicationController

  def index
    @time = "#{Time.now.asctime}"
    @events = Event.all
  end

end
