class Ability
  include CanCan::Ability

  def initialize(user)

    if user.employer?

      # jobs

      can :create, Job
      can :update, Job do |job|
        job.try(:user) == user
      end
      can :read, Job, user_id: user.id
      can :destroy, Job do |job|
        job.try(:user) == user
      end

      # profiles

      can [:create, :update, :read, :destroy], EmployerProfile, user_id: user.id
      cannot [:create, :update, :read, :destroy], FreelancerProfile

    elsif user.freelancer?
      can :read, Job

      # profiles

      can :create, FreelancerProfile
      can [:update, :read], FreelancerProfile, user_id: user.id
      cannot [:create, :update, :read, :destroy], EmployerProfile

    end
  end
end
