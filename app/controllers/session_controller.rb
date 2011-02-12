class SessionController < ApplicationController
  before_filter :verify_guest, :only => [:create, :show]
  before_filter :verify_admin, :only => :destroy
  PASSWORD = 'forcetimesdistance'
  
  def create
    if params[:password] == PASSWORD
      self.current_user = :admin
      redirect_to members_path
    else
      render :action => :show
    end
  end
  
  def destroy
    self.current_user = nil
    redirect_to members_path
  end
end