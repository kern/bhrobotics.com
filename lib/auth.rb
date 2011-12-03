module BHRobotics::Auth
  def self.included(base)
    base.class_eval do
      helper_method :admin?, :guest?, :current_user
    end
  end
  
  protected
  
  def admin?
    session[:user] == :admin
  end
  
  def guest?
    session[:user].nil?
  end
  
  def current_user
    session[:user]
  end
  
  def current_user=(user)
    session[:user] = user
  end
  
  def verify_admin
    access_denied unless admin?
  end
  
  def verify_guest
    access_denied unless guest?
  end
  
  def access_denied
    redirect_to root_path
  end
end