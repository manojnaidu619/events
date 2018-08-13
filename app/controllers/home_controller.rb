class HomeController < ApplicationController
  def index
    if coordinator_signed_in?
      redirect_to dashboard_path              # Separate Root page to Logged in Co-ordinator!!
    end
    @events = Event.all
  end
end
