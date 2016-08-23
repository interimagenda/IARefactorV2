class Ability
  include CanCan::Ability

  def initialize(user)

    if user.employer?
      can :create, Job
      can :update, Job do |job|
        job.try(:user) == user
      end
      can :read, Job, user_id: user.id
      can :destroy, Job do |job|
        job.try(:user) == user
      end
    elsif user.freelancer?
      can :read, Job
    end
  end
end
