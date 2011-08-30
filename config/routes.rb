BHRobotics::Application.routes.draw do
  root :to => 'welcome#index'
  
  resource :session, :controller => :session
  
  scope '/team' do
    resources :members
  end
  
  match '/sign-in' => 'session#show'
  match '/sign-out' => 'session#destroy'
  
  match 'welcome' => 'welcome#index'  
  match 'about/:action',     :controller => :about,     :as => :about
  match 'team/:action',      :controller => :team,      :as => :team
  match 'media/:action',     :controller => :media,     :as => :media
  match 'community/:action', :controller => :community, :as => :community
end