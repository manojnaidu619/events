class MailJob < ApplicationJob
  queue_as :default

  def perform(event)                              # Passing event Object into the Mailer
    @event = event
    UserMailer.new_event(@event).deliver_now      # Connecting to SMTP Mail server
  end
end
