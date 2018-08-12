class MailJob < ApplicationJob
  queue_as :default

  def perform(event)
    @event = event
    UserMailer.new_event(@event).deliver_now
  end
end
