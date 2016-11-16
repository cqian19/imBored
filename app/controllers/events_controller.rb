class EventsController < ApplicationController

  def index
      @events = Event.all
  end
 
  def new
      @event = Event.new
  end

  def create
      @event = Event.new(event_params)
      if @event.save
            flash[:succes] = "Event created!"
            redirect_to events_path(current_user.id)
      else
            flash[:error] = "Missing information"
            render :new
      end
  end

  def event_params
      params.require(:event).permit(:name, :month, :day, :year)
  end

end
