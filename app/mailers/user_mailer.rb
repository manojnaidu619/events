class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.new_event.subject
  #
  def new_event(event)
    @event = event
    mail to: event.coordinator.email, subject: "New Event Notification!!"
  end
end
