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

     def edit
       @event = Event.find(params[:id])
     end

     def update
       @event = Event.find(params[:id])
       if @event.update(event_params)
         redirect_to event_path
       else
         render 'edit'
       end
     end

     def destroy
       @event = Event.find(params[:id])
       @event.destroy
       redirect_to root_path
     end

     private

     def event_params
       params.require(:event).permit(:name, :description, :coordinator_id, :image)
     end
end
