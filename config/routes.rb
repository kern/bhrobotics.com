BHRobotics::Application.routes.draw do
  scope "/about" do
    get "mission" => "about#mission", :as => :mission

    get "members/sign-in" => "members#sign_in", :as => :sign_in
    post "members/sign-in" => "members#check_sign_in", :as => :check_sign_in
    get "members/sign-out" => "members#sign_out", :as => :sign_out
    get "members" => "members#index", :as => :members
    post "members" => "members#create"
    get "members/new" => "members#new", :as => :new_member
    get "members/:id" => "members#show", :as => :member
    put "members/:id" => "members#update"
    delete "members/:id" => "members#destroy"
    get "members/:id/edit" => "members#edit", :as => :edit_member

    scope "/robots" do
      get "rob-2" => "about#rob_2", :as => :rob_2
      get "strikert" => "about#strikert", :as => :strikert
      get "morbit" => "about#morbit", :as => :morbit
      get "orange-fever" => "about#orange_fever", :as => :orange_fever
      get "mad-max" => "about#mad_max", :as => :mad_max
      get "killer-katie" => "about#killer_katie", :as => :killer_katie
      get "norman-1" => "about#norman_1", :as => :norman_1
      get "mettabot" => "about#mettabot", :as => :mettabot
      root :to => "about#mettabot", :as => :robots
    end

    get "awards" => "about#awards", :as => :awards
    get "about-this-website" => "about#about_this_website", :as => :about_this_website
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
    get "wire-edm" => "partners#wire_edm", :as => :wire_edm
    root :to => "partners#wdi"
  end

  scope "/community" do
    scope "/outreach" do
      get "car-show" => "community#car_show", :as => :car_show
      get "ttc" => "community#ttc", :as => :ttc
      get "rmd-charities" => "community#rmd_charities", :as => :rmd_charities
      get "engineering-day" => "community#engineering_day", :as => :engineering_day
      get "k8-contest" => "community#k8_contest", :as => :k8_contest
      get "mda" => "community#mda", :as => :mda
      get "cedars" => "community#cedars", :as => :cedars
      get "hm-breakfast" => "community#hm_breakfast", :as => :hm_breakfast
      get "other-outreach-events" => "community#other_outreach_events", :as => :other_outreach_events
      root :to => "community#outreach", :as => :outreach
    end

    root :to => "community#outreach"
  end

  scope "/first" do
    get "what-is-first" => "first#what_is_first", :as => :what_is_first
    get "rebound-rumble" => "first#rebound_rumble", :as => :rebound_rumble
    get "logomotion" => "first#logomotion", :as => :logomotion
    get "breakaway" => "first#breakaway", :as => :breakaway
    get "lunacy" => "first#lunacy", :as => :lunacy
    get "overdrive" => "first#overdrive", :as => :overdrive
    get "rack-n-roll" => "first#rack_n_roll", :as => :rack_n_roll
    get "aim-high" => "first#aim_high", :as => :aim_high
    get "triple-play" => "first#triple_play", :as => :triple_play
    get "heroes-of-first" => "first#heroes_of_first", :as => :heroes_of_first
    get "creating-a-first-website" => "first#creating_a_first_website", :as => :creating_a_first_website
    root :to => "first#what_is_first"
  end

  root :to => "welcome#index"
end
