class UsersController < ApplicationController
  
  respond_to :json
  
  def index
    respond_with(@users = User.all)
  end
  
  def show
    respond_with(@user = User.find(params[:id]))
  end
  
end
