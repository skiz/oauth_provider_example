require 'spec_helper'

describe WelcomeController do
  it "should provide index page" do
    get :index
    response.should be_success
    response.body.should eql 'SAPI'
  end
end
