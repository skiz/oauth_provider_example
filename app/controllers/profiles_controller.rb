class ProfilesController < ApplicationController
  before_filter :login_or_oauth_required
  
  respond_to :json
  
  def show
    respond_with(@profile = User.find(params[:user_id]).try(:profile))
  end
  
end
