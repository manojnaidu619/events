class EventsController < ApplicationController

  def dashboard
    @events = current_coordinator.events
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_coordinator.events.build(event_params)
     if @event.save
       redirect_to event_path(@event)
     else
       render 'new'
       puts @event.errors.full_messages
     end
     end

     def show
       @event = Event.find(params[:id])
     end

     private

     def event_params
       params.require(:event).permit(:name, :description, :coordinator_id)
     end
end
