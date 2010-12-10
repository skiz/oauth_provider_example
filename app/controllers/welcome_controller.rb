class WelcomeController < ApplicationController
  before_filter :authenticate_user!, :except => :index
  
  def index
  end
  
  def about
  end
  
end
