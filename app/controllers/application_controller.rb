class ApplicationController < ActionController::Base
  before_action :authenticate_coordinator!, except: [:index]     # Authenticate Method through Devise gem
end
