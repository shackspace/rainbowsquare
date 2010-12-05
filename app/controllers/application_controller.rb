class ApplicationController < ActionController::Base
  protect_from_forgery

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password, :password_confirmation
end
