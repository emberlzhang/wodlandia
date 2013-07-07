class ApplicationController < ActionController::Base
  include Clearance::Controller
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    #if user logged in
      #redirect to profile page
    #else #user not logged in
      #nothing, just show application index page
    #end
  end
end
