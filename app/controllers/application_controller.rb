class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate_admin!
    unless player_signed_in? and current_player.admin
      redirect_to(:controller => "devise/sessions", :action => "new")
    end
  end
end
