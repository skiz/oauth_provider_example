class ProfilesController < ApplicationController
  
  respond_to :json
  
  def show
    respond_with(@profile = User.find(params[:user_id]).try(:profile))
  end
  
end
