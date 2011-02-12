class Ability
  include CanCan::Ability
  
  def initialize(user)
    alias_action :destroy, :to => :delete
    user == :admin ? admin_abilities : guest_abilities
  end
  
  def guest_abilities
    can :read, :all
  end
  
  def admin_abilities
    can :create, :all
    can :read,   :all
    can :update, :all
    can :delete, :all
  end
end