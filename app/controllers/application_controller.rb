class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    trigger = FitbitPoller.new.poll

    if trigger.current_is_over_baseline?
      send_response
    end
  end

  def send_response
    # Response.new.call
  end
end
