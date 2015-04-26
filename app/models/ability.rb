class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new # guest user (not logged in)
    if user.role?(:admin)
      can :manage, :all
    elsif user.role?(:user)
      can :manage, User do |u|
        u.id == user.id
      end
      can :manage, Journey do |j|
        j.user_id == user.id || j.new_record?

      end
    else
      can :read, :all
    end
  end
end
