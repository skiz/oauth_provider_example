class ApplicationController < ActionController::Base
  protect_from_forgery
  
  protected

  # make oauth play nice with devise
  alias :login_required :authenticate_user!
  alias :logged_in? :signed_in?
  helper_method :logged_in?
  
end
