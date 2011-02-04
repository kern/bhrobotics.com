BhroboticsCom::Application.routes.draw do
  root :to => 'welcome#index'
  
  scope '/team' do
    resources :members
    resources :awards
  end
  
  match 'about/:action',     :controller => :about,     :as => :about
  match 'team/:action',      :controller => :team,      :as => :team
  match 'media/:action',     :controller => :media,     :as => :media
  match 'community/:action', :controller => :community, :as => :community
end