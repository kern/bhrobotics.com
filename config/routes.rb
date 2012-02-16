BHRobotics::Application.routes.draw do
  scope "/about" do
    get "mission" => "about#mission", :as => :mission
    get "robots" => "about#robots", :as => :robots
    get "awards" => "about#awards", :as => :awards
    get "about_this_website" => "about#about_this_website", :as => :about_this_website
    root :to => "about#mission"
  end

  scope "/media" do
    get "documents" => "media#documents", :as => :documents
    get "calendar" => "media#calendar", :as => :calendar
    root :to => "media#documents"
  end

  scope "/partners" do
    get "wdi" => "partners#wdi", :as => :wdi
    get "larop" => "partners#larop", :as => :larop
    get "raytheon" => "partners#raytheon", :as => :raytheon
    get "redman" => "partners#redman", :as => :redman
    get "asb" => "partners#asb", :as => :asb
    get "wire_edm" => "partners#wire_edm", :as => :wire_edm
    root :to => "partners#wdi"
  end

  scope "/community" do
    get "outreach" => "community#outreach", :as => :outreach
    root :to => "community#outreach"
  end

  scope "/first" do
    get "what_is_first" => "first#what_is_first", :as => :what_is_first
    get "rebound_rumble" => "first#rebound_rumble", :as => :rebound_rumble
    get "previous_years" => "first#previous_years", :as => :previous_years
    get "heroes_of_first" => "first#heroes_of_first", :as => :heroes_of_first
    get "creating_a_first_website" => "first#creating_a_first_website", :as => :creating_a_first_website
    root :to => "first#what_is_first"
  end

  root :to => "welcome#index"
end
