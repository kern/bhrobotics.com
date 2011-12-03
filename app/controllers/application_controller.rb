require 'auth'

class ApplicationController < ActionController::Base
  include BHRobotics::Auth
  protect_from_forgery
end