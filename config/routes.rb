BHRobotics::Application.routes.draw do
  scope "/about" do
    get "mission" => "about#mission", :as => :mission
    get "members" => "about#members", :as => :members
    get "subteams" => "about#subteams", :as => :subteams
    get "robots" => "about#robots", :as => :robots
    get "awards" => "about#awards", :as => :awards
    get "about_this_website" => "about#about_this_website", :as => :about_this_website
    root :to => "about#index", :as => :about
  end

  scope "/media" do
    get "photos" => "media#photos", :as => :photos
    get "videos" => "media#videos", :as => :videos
    get "documents" => "media#documents", :as => :documents
    get "calendar" => "media#calendar", :as => :calendar
    root :to => "media#index", :as => :media
  end

  scope "/partners" do
    get "wdi" => "partners#wdi", :as => :wdi
    get "larop" => "partners#larop", :as => :larop
    get "bhef" => "partners#bhef", :as => :bhef
    get "raytheon" => "partners#raytheon", :as => :raytheon
    get "redman" => "partners#redman", :as => :redman
    root :to => "partners#index", :as => :partners
  end

  scope "/community" do
    get "outreach" => "community#outreach", :as => :outreach
    get "blog" => "community#blog", :as => :blog
    get "facebook" => "community#facebook", :as => :facebook
    get "twitter" => "community#twitter", :as => :twitter
    root :to => "community#index", :as => :community
  end

  scope "/first" do
    get "what_is_first" => "first#what_is_first", :as => :what_is_first
    get "rebound_rumble" => "first#rebound_rumble", :as => :rebound_rumble
    get "previous_years" => "first#previous_years", :as => :previous_years
    get "heroes_of_first" => "first#heroes_of_first", :as => :heroes_of_first
    get "creating_a_first_website" => "first#creating_a_first_website", :as => :creating_a_first_website
    root :to => "first#index", :as => :first
  end

  root :to => "welcome#index"
end
