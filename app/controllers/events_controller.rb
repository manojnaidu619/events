class EventsController < ApplicationController

  def dashboard
    @events = current_coordinator.events      # Lists all Events Associated with the Co-ordinator
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_coordinator.events.build(event_params)
     if @event.save
       #MailJob.perform_later(@event)         # Active job to send mails,Check Active jobs (jobs/mail_job.rb)
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
       @event.images.purge                 # Deleting Image file inside the Active Storage blob table
       redirect_to root_path
     end

     private

     def event_params
       params.require(:event).permit(:name, :description, :coordinator_id, images: [] )   # whitelisting parameters, images accepting multiple file uploads in to array
     end
end
